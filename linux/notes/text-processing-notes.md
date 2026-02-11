# Text processing notes

- grep "error" /var/log/syslog                 - search for text in a file
- grep -r "TODO" ~/projects/                   - search recursively in a folder
- grep -i "failed" /var/log/auth.log | wc -l   - count matches (case-insensitive)
- awk '{print $1, $11}'                        - print columns (example with ps output)
- awk -F: '{print $1, $6}' /etc/passwd         - split by ":" and print username + home
- sed 's/old/new/g' file.txt                   - replace text
- sed -n '10,20p' file.txt                     - print lines 10 to 20
