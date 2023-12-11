#!/bin/bash
iptables -t raw    -A PREROUTING -j LOG --log-level 7 --log-prefix "prerouting.raw: "
iptables -t mangle -A PREROUTING -j LOG --log-level 7 --log-prefix "prerouting.mangle: "
iptables -t nat    -A PREROUTING -j LOG --log-level 7 --log-prefix "prerouting.nat: "

iptables -t mangle -A INPUT -j LOG --log-level 7 --log-prefix "intput.mangle: "
iptables -t filter -A INPUT -j LOG --log-level 7 --log-prefix "input.filter: "

iptables -t raw    -A OUTPUT -j LOG --log-level 7 --log-prefix "output.raw: "
iptables -t mangle -A OUTPUT -j LOG --log-level 7 --log-prefix "output.mangle: "
iptables -t nat    -A OUTPUT -j LOG --log-level 7 --log-prefix "output.nat: "
iptables -t filter -A OUTPUT -j LOG --log-level 7 --log-prefix "output.filter: "

iptables -t mangle -A POSTROUTING -j LOG --log-level 7 --log-prefix "postrouting.mangle: "
iptables -t nat    -A POSTROUTING -j LOG --log-level 7 --log-prefix "postrouting.nat: "
