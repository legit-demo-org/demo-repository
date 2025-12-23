#!/bin/bash
# A typical insecure script runners might have
apt-get update
apt-get install -y netcat sudo
touch /tmp/vuln.txt
echo "Vulnerable container execution" > /tmp/vuln.txt
#not a change
