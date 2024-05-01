#!/bin/bash
# AUTHOR : Franck Fesse <me@franckfesse.com>
# Creation date : 22 May 2022
# Last Edited :  29 April 2024
# Description: AWS s3 backup script to be executed to backup your files or directories
# to your select aws s3 bucket.

# Upload the config
source .s3-config

# Show how to use this script
help="
    Usage: $0 [arguments] 
    Arguments:
        --help (-h): Display this help message
        --add (-a): Add directory or file to backup
        --list (-l): List the directory and file backup and also the s3 bucket
        --remove (-r): Remove directory we don't need to sync anymore
"

function backup() {
  echo "Backing up your files now ..."
  aws s3 sync $Default_directory s3://$Default_bucket_name/materials
}

echo "Welcome to s3backup"
echo "${help}"
backup
exit 0
