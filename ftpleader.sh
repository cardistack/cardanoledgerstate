#!/bin/bash
WORKINGDIRFILES="/home/masterp/My_home_space/masterp/cardanoEnv/dumpledgerdocker/cardanoledgerstate"  # change full path to match your working dir
cd $WORKINGDIRFILES
HOST='10.10.12.5'
USER='titiboi'
PASSWD='titiboi1998!'
FILE='ledger.json'
REMOTEPATH='/jdownloader' #change to your remote path on ftp server

ftp -pdniv $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
cd $REMOTEPATH
binary
put $FILE
quit
END_SCRIPT
echo "File uploaded"
exit 0

