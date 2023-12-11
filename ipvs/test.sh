#!/bin/bash

ipvsadm -A -t 20.20.0.1:80 -s rr
# ipvsadm -D -t 20.20.0.1:80 -s rr
ipvsadm -a -t 20.20.0.1:80 -r 172.17.0.5:80 -m
# ipvsadm -e -t 20.20.0.1:80 -r 172.17.0.5:80 -m
# ipvsadm -d -t 20.20.0.1:80 -r 172.17.0.5:80 -m

ipvsadm -ln
