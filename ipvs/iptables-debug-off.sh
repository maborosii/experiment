#!/bin/bash
iptables -t raw    -D PREROUTING -j LOG --log-level 7 --log-prefix "prerouting.raw: "
iptables -t mangle -D PREROUTING -j LOG --log-level 7 --log-prefix "prerouting.mangle: "
iptables -t nat    -D PREROUTING -j LOG --log-level 7 --log-prefix "prerouting.nat: "

iptables -t mangle -D INPUT -j LOG --log-level 7 --log-prefix "intput.mangle: "
iptables -t filter -D INPUT -j LOG --log-level 7 --log-prefix "input.filter: "

iptables -t raw    -D OUTPUT -j LOG --log-level 7 --log-prefix "output.raw: "
iptables -t mangle -D OUTPUT -j LOG --log-level 7 --log-prefix "output.mangle: "
iptables -t nat    -D OUTPUT -j LOG --log-level 7 --log-prefix "output.nat: "
iptables -t filter -D OUTPUT -j LOG --log-level 7 --log-prefix "output.filter: "

iptables -t mangle -D POSTROUTING -j LOG --log-level 7 --log-prefix "postrouting.mangle: "
iptables -t nat    -D POSTROUTING -j LOG --log-level 7 --log-prefix "postrouting.nat: "
