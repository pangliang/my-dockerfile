#!/bin/bash

iptables -t nat -A POSTROUTING -o eth0 -s 192.168.0.0/24 -j MASQUERADE

/usr/sbin/pptpd -f
