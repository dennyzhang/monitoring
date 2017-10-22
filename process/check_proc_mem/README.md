<a href="https://github.com/DennyZhang?tab=followers"><img align="right" width="200" height="183" src="https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/fork_github.png" /></a>

[![Build Status](https://travis-ci.org/DennyZhang/monitoring.svg?branch=master)](https://travis-ci.org/DennyZhang/monitoring) [![LinkedIn](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/linkedin.png)](https://www.linkedin.com/in/dennyzhang001) [![Github](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/github.png)](https://github.com/DennyZhang) [![Twitter](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/twitter.png)](https://twitter.com/dennyzhang001) [![Slack](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/slack.png)](https://goo.gl/ozDDyL)
- File me [tickets](https://github.com/DennyZhang/monitoring/issues) or star [the repo](https://github.com/DennyZhang/monitoring)

check_proc_mem
==============

- Link: https://www.dennyzhang.com/nagois_monitor_process_memory

Nagios plugin to check proc memory: Monitor resident memory for a given process

```
/sshx:contact@dennyzhang.com: #$ ./check_proc_mem.sh --help
check_proc_mem v1.0

Usage:
./check_proc_mem.sh -w <warn_MB> -c <criti_MB> <pid_pattern> <pattern_argument>

Below: If tomcat use more than 1024MB resident memory, send warning
./check_proc_mem.sh -w 1024 -c 2048 --pidfile "/var/run/tomcat7.pid"
./check_proc_mem.sh -w 1024 -c 2048 --pid 11325
./check_proc_mem.sh -w 1024 -c 2048 --cmdpattern "tomcat7.*java.*Dcom"

Copyright (C) 2014 DennyZhang (contact@dennyzhang.com)
```

Sample output:
```
/sshx:contact@dennyzhang.com: #$ ./check_proc_mem.sh -w 1024 -c 2048 --pidfile "/var/run/tomcat7.pid"
Memory: OK VIRT: 5795 MB - RES: 663 MB used!|VIRT=6076497920;;;; RES=695205888;;;;
```
