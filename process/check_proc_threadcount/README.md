[![Build Status](https://travis-ci.org/DennyZhang/monitoring.svg?branch=master)](https://travis-ci.org/DennyZhang/monitoring) [![LinkedIn](https://www.dennyzhang.com/wp-content/uploads/sns/linkedin.png)](https://www.linkedin.com/in/dennyzhang001) [![Github](https://www.dennyzhang.com/wp-content/uploads/sns/github.png)](https://github.com/DennyZhang) [![Twitter](https://www.dennyzhang.com/wp-content/uploads/sns/twitter.png)](https://twitter.com/dennyzhang001) [![Slack](https://www.dennyzhang.com/wp-content/uploads/sns/slack.png)](https://www.dennyzhang.com/slack)
- File me [tickets](https://github.com/DennyZhang/monitoring/issues) or star [the repo](https://github.com/DennyZhang/monitoring)

check_java_threadcount
==============
Nagios Monitor thread count of a given program

check_proc_threadcount v1.0

- Link: https://www.dennyzhang.com/nagois_threadcount

```
Usage:
check_proc_threadcount.sh -w <warn_count> -c <criti_count> <pid_pattern> <pattern_argument>

Below: If tomcat starts more than 1024 threads, send warning
check_proc_threadcount.sh -w 1024 -c 2048 --pidfile /var/run/tomcat7.pid
check_proc_threadcount.sh -w 1024 -c 2048 --pid 11325
check_proc_threadcount.sh -w 1024 -c 2048 --cmdpattern "tomcat7.*java.*MaxPermSize"

Copyright (C) 2017 DennyZhang (contact@dennyzhang.com)
```
