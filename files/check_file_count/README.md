check_file_count.sh
==============
If too many files under a folder, raise an alert.

# How To Use
```
root@dennyzhang.com:/tmp# ls -lth /tmp/*.jpg | wc -l
32
root@dennyzhang.com:/tmp# bash ./check_file_count.sh "/tmp" 150 250 "*.jpg"
OK: 72 files(*) under /tmp.
root@dennyzhang.com:/tmp# bash ./check_file_count.sh "/tmp" 150 250 "*.jpg"
OK: 32 files(*.jpg) under /tmp.
root@dennyzhang.com:/tmp# bash ./check_file_count.sh "/tmp" 30 40 "*.jpg"
WARNING: 32 files(*.jpg) under /tmp. More than 30.
root@dennyzhang.com:/tmp# bash ./check_file_count.sh "/tmp" 10 20 "*.jpg"
ERROR: 32 files(*.jpg) under /tmp. More than 20.
```
