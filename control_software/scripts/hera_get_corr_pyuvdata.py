"""Get corr into pyuvdata."""
import numpy as np
import argparse
from pyuvdata import UVData
from pyuvdata.utils import polstr2num
from astropy.time import Time
from astropy.coordinates import SkyCoord
import astropy.units as u
from hera_corr_f import SnapFengine
from hera_corr_f import HeraCorrelator
from hera_corr_cm import redis_cm
from hera_corr_cm.handlers import add_default_log_handlers
import logging
import time
from collections import OrderedDict


logger = add_default_log_handlers(logging.getLogger(__name__))

parser = argparse.ArgumentParser(description='Obtain cross-correlation spectra from a SNAP Board',
                                 formatter_class=argparse.ArgumentDefaultsHelpFormatter)
parser.add_argument('host', type=str,
                    help='Host board to collect data from')
parser.add_argument('-r', dest='redishost', type=str, default='redishost',
                    help='Host servicing redis requests')
parser.add_argument('-n', '--num_spectra', type=int, default=1,
                    help='Number of spectra per file')
parser.add_argument('-t', '--integration_time', type=int, default=1,
                    help='Integration time in seconds for each spectra')
parser.add_argument('-o', '--output', type=str, default='.',
                    help='Path to destination folder')
parser.add_argument('--format', type=str, choices=['MIRIAD', 'UVFITS'], default='UVFITS',
                    help='Format of the output pyuvdata file')
parser.add_argument('-w', '--wait_time', type=int, default=0,
                    help='Wait time between files (duty cycle basically)')
args = parser.parse_args()


raise NotImplementedError(
    "The form of the cminfo used by this script has changed. "
    "As a result, this script is no longer executable as written."
    "\nAdditional knowledge is needed to propagate the new cminfo into this script."
    "\nPlease contact developers and make a new issue outlining the desired "
    "use of this script."
    "\nhttps://github.com/HERA-Team/hera_corr_f/issues"
)

corr = HeraCorrelator(redishost=args.redishost)
corr.disable_monitoring(__file__, 60)
logger.warning('Disabling the monitoring.')
time.sleep(2)

feng = SnapFengine(args.host)

# Get antenna numbers from database
corr.compute_hookup()
ants = corr.snap_to_ant[args.host]
# ants = [u'HH0N', u'HH0E', u'HH1N', u'HH1E', u'HH12N', u'HH12E']

fqs = np.arange(feng.corr.nchans) * 250e6/feng.corr.nchans
pols = range(4)
ant1_array = np.array([[0, 0, 0, 1, 1, 2] for t in range(args.num_spectra)]).astype(int).flatten()
ant2_array = np.array([[0, 1, 2, 1, 2, 2] for t in range(args.num_spectra)]).astype(int).flatten()

# Mapping: 1x,1y,2x,2y,3x,3y = 0,1,2,3,4,5
cycle_pols = OrderedDict({'XX': [(0, 0), (0, 2), (0, 4), (2, 2), (2, 4), (4, 4)],
                          'YY': [(1, 1), (1, 3), (1, 5), (3, 3), (3, 5), (5, 5)],
                          'XY': [(0, 1), (0, 3), (0, 5), (2, 3), (2, 5), (4, 5)],
                          'YX': [(1, 0), (1, 2), (1, 4), (3, 2), (3, 4), (5, 4)]})

acc_len = int((args.integration_time*250e6) /
              (8*feng.corr.nchans*feng.corr.spec_per_acc))
if not acc_len == feng.corr.get_acc_len():
    feng.corr.set_acc_len(acc_len)

first_run = 1

fqs = np.linspace(0, 250, num=1024)*1e6

loc = redis_cm.read_cminfo_from_redis(return_as='namespace', redishost=args.redishost)

# Write different files for different polarizations
while(True):
    try:
        for pol, bls in cycle_pols.items():
            feng.corr.set_input(bls[0][0], bls[0][1])
            feng.corr.wait_for_acc()
            times = []
            poco = []
            for n in range(args.num_spectra):
                c = []
                for idx in range(len(bls)):
                    a1, a2 = bls[idx]
                    next_a1, next_a2 = bls[(idx+1) % len(bls)]
                    feng.corr.set_input(next_a1, next_a2)
                    bram = feng.corr.read_bram()
                    logger.info('Getting baseline pair: (%d, %d)..' % (a1, a2))
                    times.append(time.time())
                    if a1 == a2:
                        bram.imag = 0
                        bram.real = bram.real/float(feng.corr.acc_len*feng.corr.spec_per_acc)
                    else:
                        bram = bram/float(feng.corr.acc_len*feng.corr.spec_per_acc)
                    c.append(bram)
                poco.append(np.transpose(c))

            # Write output to pyuvdata file
            data = UVData()
            data.Nfreqs = len(fqs)
            data.Nspws = 1
            data.Npols = 1
            data.Nbls = len(bls)
            data.Ntimes = len(times)
            data.Nblts = data.Ntimes

            # Init flag array with no flags
            data.flag_array = np.empty((data.Nblts, data.Nspws,
                                        data.Nfreqs, data.Npols), dtype=bool)
            data.flag_array[:] = False

            # Init nsamples array with  unity weights
            data.nsample_array = np.ones((data.Nblts, data.Nspws,
                                          data.Nfreqs, data.Npols), dtype=float)

            # Create frequency array
            data.freq_array = np.zeros((data.Nspws, data.Nfreqs))
            data.freq_array[0, :] = fqs

            # Set spw array
            data.spw_array = np.zeros(data.Nspws).astype(int)

            # Channel width
            data.channel_width = data.freq_array[0, 1]-data.freq_array[0, 0]

            # Convert to Nblt ordering and copy data
            data.data_array = np.zeros((data.Nblts, data.Nspws,
                                        data.Nfreqs, data.Npols), dtype=complex)
            data.data_array[:, 0, :, 0] = np.transpose(poco[0])
            data.polarization_array = np.array([polstr2num(pol)]).astype(int)

            # Integration time (including dead time)
            data.integration_time = times[1]-times[0]

            # Antenna numbers
            data.ant_1_array = [ants[pair[0]] for pair in bls]*args.num_spectra
            data.ant_2_array = [ants[pair[1]] for pair in bls]*args.num_spectra

            data.ant_1_array = np.asarray([str(a)[2:-1] for a in data.ant_1_array]).astype(int)
            data.ant_2_array = np.asarray([str(a)[2:-1] for a in data.ant_2_array]).astype(int)

            # set telescope data
            data.telescope_location = loc.COFA_telescope_location
            data.antenna_positions = loc.antenna_positions
            data.antenna_numbers = loc.antenna_numbers
            data.antenna_names = loc.antenna_names
            data.Nants_telescope = loc.number_of_antennas
            data.Nants_data = 3

            # Write times
            jds = Time(times, format='unix')
            data.time_array = jds.jd
            data.set_lsts_from_time_array()

            # Set ra,dec of zenith during observation
            data.zenith_ra = np.zeros_like(data.time_array)
            data.zenith_dec = np.zeros_like(data.time_array)

            for tnum, t in enumerate(data.time_array):
                observation_time = Time(t, format='jd')
                zenith_altaz = SkyCoord(location=loc.observatory, obstime=observation_time,
                                        alt=90.*u.degree, az=0.*u.degree, frame='altaz').icrs
                data.zenith_ra[tnum] = zenith_altaz.ra.degree
                data.zenith_dec[tnum] = zenith_altaz.dec.degree

            # Other header
            data.phase_type = 'phased'  # 'drift'
            data.phase_center_dec = 0.0
            data.phase_center_ra = 0.0
            data.phase_center_epoch = 2000.0
            data.history = 'SNAP poco data file'
            data.object_name = 'DRIFT'
            data.instrument = 'SNAP'
            data.telescope_name = 'HERA'
            data.vis_units = 'uncalib'

            data.uvw_array = np.zeros((data.Nblts, 3))
            for ai, ant1, ant2 in zip(range(data.Nblts), data.ant_1_array, data.ant_2_array):
                data.uvw_array[ai] = loc.all_antennas_enu[ant2] - loc.all_antennas_enu[ant1]

            data.baseline_array = (2048*(data.ant_1_array+1) +
                                   (data.ant_2_array+1)+2**16).astype(np.int64)
            data.Nbls = len(np.unique(data.baseline_array))

            outfilename = 'snap_poco.%d.%s' % (times[0], pol)
            if args.format == 'MIRIAD':
                outfilename += '.HH'
                data.write_miriad(outfilename)
            elif args.format == 'UVFITS':
                outfilename += '.uvfits'
                data.write_uvfits(outfilename, force_phase=True, spoof_nonessential=True)
            logger.info('Writing output to file: %s' % outfilename)

            del(data)

    except KeyboardInterrupt:
        logger.info('Manually interrupted')
        logger.info('Last file written: %s' % outfilename)
        break

    except:  # noqa
        logger.info('Will try again in two minutes')
        time.sleep(120)
        cnt = 0
        while cnt < 20:
            try:
                feng = SnapFengine(args.host)
                if feng.fpga.is_connected():
                    break
            except:  # noqa
                logger.info('Still cannot connect. Wait two more minutes')
                time.sleep(60)
                cnt += 1
                continue
        if cnt >= 20:
            logger.error('Tried 20 times. Done.')
            exit()
        else:
            continue
