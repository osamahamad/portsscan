#!/bin/bash

for i in $(cat $1):
do
strip=$(echo $i | sed 's/https\?:\/\///' )
dig +short $strip|grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"|head -1 | tee -a ip.out
done

masscan -p1-65535 -iL ip.out --max-rate 100000 -oG ports-masscan.out
