#!/bin/bash
# AUTHOR : Franck Fesse <me@franckfesse.com>
# Creation date : 22 May 2022
# Last Edited :  22 May 2022
# Description: AWS s3 backup script to be executed to backup your files or directories
# to your select aws s3 bucket.

# Show how to use this script
function _s3backup_show_usage() {
    echo -e "Usage:\n$0 [arguments] \n"
    echo "Arguments:"
    echo "--help (-h): Display this help message"
    echo "--add (-a): Add directory or file to backup"
    echo "--list (-l): List the directory and file backup and also the s3 bucket"
    echo "--remove (-r): Remove directory we don't need to sync anymore"
    exit 0
}

function backup() {
  echo "Backing up your files now ..."
  aws s3 ls
}

echo "Welcome to s3backup"
_s3backup_show_usage
backup
exit 0
