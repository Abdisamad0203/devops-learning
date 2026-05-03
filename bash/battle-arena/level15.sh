#!/bin/bash

echo "1 disk usage"
echo "2 uptime"
echo "3 backup arena"
echo "4 read config"

read option

case $option in

1)
df -h
;;

2)
uptime
;;

3)
mkdir -p Backups

time=$(date +"%Y-%m-%d_%H-%M-%S")
file="Backups/arena_$time.tar.gz"

tar -czf "$file" Arena 2>/dev/null
echo "Backup saved: $file"

cd Backups || exit

ls -t | tail -n +4 | while read old
do
rm -f "$old"
done
;;

4)
if [ ! -f settings.conf ]; then
echo "No config file"
exit 1
fi

while IFS='=' read -r key val
do
echo "$key = $val"
done < settings.conf
;;

*)
echo "Invalid choice"
;;

esac
