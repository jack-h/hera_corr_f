#! /bin/bash

LOGFILE=~/snap_start.log

source ~/.bashrc
set -e

echo hera_feng_start.sh: Initializing F-Engines > $LOGFILE
date >> $LOGFILE
hera_snap_feng_init.py -p -i -d &>> $LOGFILE

echo >> $LOGFILE
echo >> $LOGFILE
echo hera_feng_start.sh: Synchronizing and Starting TX >> $LOGFILE
hera_snap_feng_init.py -s -e &>> $LOGFILE
