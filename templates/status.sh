#!/bin/bash
while true 
do
  loadavg=$(awk '{print $1, $2, $3}' /proc/loadavg)
  datetime=$(date "+%Y.%m.%d|%H:%M:%S") 
  freeram=$(free -h | awk 'NR==2 {print $3}')
  xprop -root -set WM_NAME "[${loadavg}][${freeram}][${datetime}]"
done
