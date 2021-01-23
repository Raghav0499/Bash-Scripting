#!/bin/bash

#mkdir backup

#mkdir /home/raghav/backup/daily/

#mkdir /home/raghav/backup/weekly

#mkdir /home/raghav/backup/monthly

tar -czvf backupcomp.tar.gz backup

source="/home/raghav/files/*"
destination="/home/raghav/backup/"
daily="/home/raghav/backup/daily/"
weekly="/home/raghav/backup/weekly/"
monthly="/home/raghav/backup/monthly/"


#cp -R $source $destination


echo "Enter a folder"
read folder

case $folder in "daily") cp -R $source $daily;;
"weekly") cp -R $source $weekly;;
"monthly") cp -R $source $monthly;;
*) echo "wrong input given";;
esac





