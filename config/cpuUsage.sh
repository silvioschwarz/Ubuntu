#! /bin/sh

#1 5 15 min avg
cat /proc/loadavg | awk '{print $1","$2","$3}' >> cpu.csv

