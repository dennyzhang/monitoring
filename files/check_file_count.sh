#!/usr/bin/env bash -e
##-------------------------------------------------------------------
## @copyright 2017 DennyZhang.com
## Licensed under MIT 
##   https://www.dennyzhang.com/wp-content/mit_license.txt
##
## File: check_file_count.sh
## Author : Denny <contact@dennyzhang.com>
## Description : If too many files under a folder, raise an alert.
##               This check conform to nagios output format
## Sample: bash ./check_file_count.sh "/data/staging" 1500 2500
## --
## Created : <2017-10-09>
## Updated: Time-stamp: <2017-10-09 17:21:26>
##-------------------------------------------------------------------
folder_dir=${1?}
warn_count=${2:-1000}
err_count=${3:-2000}

EXIT_OK=0
EXIT_WARN=1
EXIT_ERR=2

if [ ! -d "$folder_dir" ]; then
    echo "Warning: folder_dir($folder_dir) doesn't exist"
    exit $EXIT_WARN
fi

file_count=$(ls "$folder_dir" | wc -l)

if [ $file_count -gt $err_count ]; then
    echo "ERROR: $file_count files under $folder_dir. More than $err_count"
    exit $EXIT_ERR
else
    echo "WARNING: $file_count files under $folder_dir. More than $warn_count"
    exit $EXIT_WARN
fi

exit $EXIT_OK
## File: check_file_count.sh ends
