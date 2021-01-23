#!/bin/bash

datestamp=$(date +%d-%m-%y)
mkdir /home/raghav/backup
mkdir /home/raghav/backup/daily
mkdir /home/raghav/backup/weekly
mkdir /home/raghav/backup/monthly

logfile=backup-$datestamp.log

touch /home/raghav/backup/$logfile

exec >>/home/raghav/backup/$logfile

#mkdir /home/raghav/backup/daily/$(date +%d-%m-%y)
#mkdir /home/raghav/backup/weekly/$(date +%d-%m-%y)
#mkdir /home/raghav/backup/monthly/$(date +%d-%m-%y)


source="/home/raghav/files/*"
destination="/home/raghav/backup"
#daily="/home/raghav/backup/daily/$(date +%d-%m-%y)"
#weekly="/home/raghav/backup/weekly/$(date +%d-%m-%y)"
#monthly="/home/raghav/backup/monthly/$(date +%d-%m-%y)"


#cp -R $source $destination
#echo "Enter a folder"
#read folder
#param = "daily"


case $1 in "daily") 
mkdir /home/raghav/backup/daily/$(date +%d-%m-%y)
daily="/home/raghav/backup/daily/$(date +%d-%m-%y)"
cp -R $source $daily
echo Daily Backup Run is selected;;
"weekly") 
mkdir /home/raghav/backup/weekly/$(date +%d-%m-%y)
weekly="/home/raghav/backup/weekly/$(date +%d-%m-%y)"
cp -R $source $weekly
echo Weekly Backup Run is Selected;;
"monthly") 
mkdir /home/raghav/backup/monthly/$(date +%d-%m-%y)
monthly="/home/raghav/backup/monthly/$(date +%d-%m-%y)"
cp -R $source $monthly
echo Monthly Backup Run Selected;;
*) 
echo "wrong input given";;
esac

zip -r backupzip.zip backup

echo Backup Folder Compressed Successfully


