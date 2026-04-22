#!/bin/bash

echo "1 disk"
echo "2 uptime"
echo "3 backup"
echo "4 config"

read choice

case $choice in
1) df -h ;;

2) uptime ;;

3)
mkdir -p Backups
ts=$(date +"%Y-%m-%d_%H-%M-%S")
tar -czf "Backups/backup_$ts.tar.gz" Arena 2>/dev/null
;;

4)
if [ ! -f "settings.conf" ]; then
echo "missing config"
exit 1
fi

while IFS='=' read -r k v
do
echo "$k -> $v"
done < settings.conf
;;

*) echo "invalid" ;;
esac
