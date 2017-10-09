#!/usr/bin/env bash
##-------------------------------------------------------------------
## @copyright 2017 DennyZhang.com
## Licensed under MIT 
##   https://www.dennyzhang.com/wp-content/mit_license.txt
##
## File: check_file_count.sh
## Author : Denny <contact@dennyzhang.com>
## Description : If too many files under a folder, raise an alert.
##               This check conform to nagios output format
## Sample: bash ./check_file_count.sh "/data/staging" 1500 2500 "*.json"
## --
## Created : <2017-10-09>
## Updated: Time-stamp: <2017-10-09 17:49:33>
##-------------------------------------------------------------------
set -e
folder_dir=${1?}
warn_count=${2:-1000}
err_count=${3:-2000}
# What files to check
file_name_pattern=${4:-"*"}

EXIT_OK=0
EXIT_WARN=1
EXIT_ERR=2

if [ ! -d "$folder_dir" ]; then
    echo "Warning: folder_dir($folder_dir) doesn't exist"
    exit $EXIT_WARN
fi

file_count=$(find "$folder_dir" -name "$file_name_pattern" | wc -l)

if [ "$file_count" -gt "$err_count" ]; then
    echo "ERROR: $file_count files($file_name_pattern) under $folder_dir. More than $err_count."
    exit $EXIT_ERR
else
    if [ "$file_count" -gt "$warn_count" ]; then
        echo "WARNING: $file_count files($file_name_pattern) under $folder_dir. More than $warn_count."
        exit $EXIT_WARN
    fi
fi

echo "OK: $file_count files($file_name_pattern) under $folder_dir."
exit $EXIT_OK
## File: check_file_count.sh ends
