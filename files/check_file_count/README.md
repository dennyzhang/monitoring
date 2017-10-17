<a href="https://github.com/DennyZhang?tab=followers"><img align="right" width="200" height="183" src="https://www.dennyzhang.com/wp-content/uploads/denny/watermark/github.png" /></a>

[![Build Status](https://travis-ci.org/DennyZhang/monitoring.svg?branch=master)](https://travis-ci.org/DennyZhang/monitoring) [![LinkedIn](https://www.dennyzhang.com/wp-content/uploads/sns/linkedin.png)](https://www.linkedin.com/in/dennyzhang001) [![Github](https://www.dennyzhang.com/wp-content/uploads/sns/github.png)](https://github.com/DennyZhang) [![Twitter](https://www.dennyzhang.com/wp-content/uploads/sns/twitter.png)](https://twitter.com/dennyzhang001) [![Slack](https://www.dennyzhang.com/wp-content/uploads/sns/slack.png)](https://goo.gl/ozDDyL)

- File me [tickets](https://github.com/DennyZhang/monitoring/issues) or star [the repo](https://github.com/DennyZhang/monitoring)

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
