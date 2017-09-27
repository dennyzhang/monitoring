<a href="https://github.com/DennyZhang?tab=followers"><img align="right" width="200" height="183" src="https://www.dennyzhang.com/wp-content/uploads/denny/watermark/github.png" /></a>

[![Build Status](https://travis-ci.org/DennyZhang/monitoring.svg?branch=master)](https://travis-ci.org/DennyZhang/monitoring) [![LinkedIn](https://www.dennyzhang.com/wp-content/uploads/sns/linkedin.png)](https://www.linkedin.com/in/dennyzhang001) [![Github](https://www.dennyzhang.com/wp-content/uploads/sns/github.png)](https://github.com/DennyZhang) [![Twitter](https://www.dennyzhang.com/wp-content/uploads/sns/twitter.png)](https://twitter.com/dennyzhang001) [![Slack](https://www.dennyzhang.com/wp-content/uploads/sns/slack.png)](https://goo.gl/ozDDyL)

- File me [tickets](https://github.com/DennyZhang/monitoring/issues) or star [the repo](https://github.com/DennyZhang/monitoring)

check_proc_fd
==============

- Link: https://www.dennyzhang.com/nagois_monitor_process_fd

Nagios plugin to check proc fd: Monitor fd opened by a given process

```
/sshx:contact@dennyzhang.com: #$ ./check_proc_fd.sh --help
check_proc_fd v1.0

Usage:
./check_proc_fd.sh -w <warn_count> -c <criti_count> <pid_pattern> <pattern_argument>

Below: If tomcat opens more than 1024 files, send warning
./check_proc_fd.sh -w 1024 -c 2048 --pidfile "/var/run/tomcat7.pid"
./check_proc_fd.sh -w 1024 -c 2048 --pid 11325
./check_proc_fd.sh -w 1024 -c 2048 --cmdpattern "tomcat7.*java.*Dcom"

Copyright (C) 2014 DennyZhang (contact@dennyzhang.com)
```

Sample output:
```
/sshx:contact@dennyzhang.com: #$ ./check_proc_fd.sh -w 1024 -c 2048 --pidfile "/var/run/tomcat7.pid"
OK: file opened by pid(12356) is 201|fd=201
```
