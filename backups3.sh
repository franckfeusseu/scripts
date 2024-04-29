#!/usr/bin/env bash
##----------------------------------------------------------------------------------------
## File : backups3.sh
## AUTHOR : Franck Fesse  <me@franckfesse.com>
## Description : Backup My files to s3 bucket
##--
## Created : <2022-01-11>
## Updated : <2022-01-11>
##----------------------------------------------------------------------------------------
# Backup My files to my s3 backup s3 bucket

# Check if a directory is given via arguments

Backup_Bucket="s3://fnf-backup"
Dir_Bucket ="/home/franckfesse/"

# aws s3 sync Dir_Bucket Backup_Bucket

if [ $# -eq 0 ]; then
    echo "We are using default directory : $Dir_Bucket "
elif [ $# -eq 1 ]; then
     Dir_Bucket=$1
     echo "we are using the directory : $Dir_Bucket"
fi     

aws s3 sync $Dir_Bucket $Backup_Bucket