<a href="https://github.com/DennyZhang?tab=followers"><img align="right" width="200" height="183" src="https://www.dennyzhang.com/wp-content/uploads/denny/watermark/github.png" /></a>

[![Build Status](https://travis-ci.org/DennyZhang/monitoring.svg?branch=master)](https://travis-ci.org/DennyZhang/monitoring) [![LinkedIn](https://www.dennyzhang.com/wp-content/uploads/sns/linkedin.png)](https://www.linkedin.com/in/dennyzhang001) [![Github](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/github.png)](https://github.com/DennyZhang) [![Twitter](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/twitter.png)](https://twitter.com/dennyzhang001) [![Slack](https://raw.githubusercontent.com/USDevOps/mywechat-slack-group/master/images/slack.png)](https://goo.gl/ozDDyL)

- File me [tickets](https://github.com/DennyZhang/monitoring/issues) or star [the repo](https://github.com/DennyZhang/monitoring)

check_out_of_memory.py
==============

- Link: https://www.dennyzhang.com/monitor_oom

Nagios plugin to check whether OOM issues have happend

Sample output:
```
/sshx:contact@dennyzhang.com:~# python /tmp/check_out_of_memory.py --hours_to_check 100
ERROR: OOM has happened in previous 100 hours.
[Sat Mar 11 00:19:43 2017] java invoked oom-killer: gfp_mask=0x26000c0, order=2, oom_score_adj=-17
[Sat Mar 11 00:19:43 2017]  [<ffffffff81188b35>] oom_kill_process+0x205/0x3d0
[Sat Mar 11 00:19:43 2017] [ pid ]   uid  tgid total_vm      rss nr_ptes nr_pmds swapents oom_score_adj name
/sshx:contact@dennyzhang.com:~# python /tmp/check_out_of_memory.py --hours_to_check 10
OK: No OOM has happened in previous 10 hours.
```
