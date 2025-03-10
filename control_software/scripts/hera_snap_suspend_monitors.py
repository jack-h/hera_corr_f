#! /usr/bin/env python

import argparse
import redis
import logging
from hera_corr_cm.handlers import add_default_log_handlers

logger = add_default_log_handlers(logging.getLogger(__file__))

parser = argparse.ArgumentParser(description='Suspend snap monitors for a specified time period',
                                 formatter_class=argparse.ArgumentDefaultsHelpFormatter)
parser.add_argument('-s', '--src', help="Name of source of disable command.", default='unspecified')
parser.add_argument('-r', dest='redishost', type=str, default='redishost',
                    help='Host servicing redis requests')
parser.add_argument('-t', dest='suspend_mins', type=float, default=5.0,
                    help='Time, in minutes, for which to suspend monitor processes')

args = parser.parse_args()

logger.info('Connecting to redis server %s' % args.redishost)
r = redis.Redis(args.redishost, decode_responses=True)

suspend_secs = int(60*args.suspend_mins)
logger.info('Disabling snap monitoring for %.1f minutes (%d seconds)' % (args.suspend_mins, suspend_secs))
r.set('disable_monitoring', args.src, ex=suspend_secs)
