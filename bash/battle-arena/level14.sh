#!/bin/bash

echo "1 disk"
echo "2 uptime"
echo "3 users"

read choice

case $choice in
1) df -h ;;
2) uptime ;;
3) cut -d: -f1 /etc/passwd ;;
*) echo "invalid" ;;
esac
