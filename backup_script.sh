#!/bin/sudo bash

#What to backup  
backup_files=/var/log/*.gz

#Create archive filename 
day=$(date +%H-%b-%d-%y)
hostname=$(hostname)
arcfile=$hostname-$day.tgz

#Where to backup to
mkdir -p /users/AksMac/projects/backup
dest=/users/AksMac/projects/backup/$arcfile

#Backing up using tar.
sudo tar cvzf $dest $backup_files



