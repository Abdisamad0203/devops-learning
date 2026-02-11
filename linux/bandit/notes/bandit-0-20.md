Bandit Levels 0–20
Level 0 → 1

Command: cat README
Why: Read file contents.
Learned: Basics of cat.

Level 1 → 2

Command: cat "spaces in this filename"
Why: Quotes handle spaces.
Learned: Shell parsing rules.

Level 2 → 3

Command: cat ./-
Why: - is treated as stdin without ./.
Learned: Relative paths matter.

Level 3 → 4

Command: ls -la then cat .hidden
Why: Hidden files start with .
Learned: Use -a to see everything.

Level 4 → 5

Command: file ./inhere/* | grep text
Why: Identify human-readable files.
Learned: file beats guessing.

Level 5 → 6

Command:
find . -type f -size 1033c ! -executable -exec file {} \; | grep text
Why: Filter by size, type, and permissions.
Learned: find is extremely powerful.

Level 6 → 7

Command:
find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
Why: Search system-wide with ownership filters.
Learned: Redirect errors to keep output clean.

Level 7 → 8

Command: grep millionth data.txt
Why: Find an exact string in a file.
Learned: Basic grep usage.

Level 8 → 9

Command: sort data.txt | uniq -u
Why: Find the unique line.
Learned: Pipes + text tools work well together.

Level 9 → 10

Command: strings data.txt | grep ===
Why: Extract readable strings from binary data.
Learned: Use strings on unknown files.

Level 10 → 11

Command: base64 -d data.txt
Why: Decode base64 content.
Learned: Encoding is not encryption.

Level 11 → 12

Command: tr 'A-Za-z' 'N-ZA-Mn-za-m'
Why: Decode ROT13 cipher.
Learned: Character translation with tr.

Level 12 → 13

Command:
xxd -r data.txt > data.bin
Then repeatedly use file, mv, gunzip, bunzip2, tar -xf
Why: File is compressed multiple times.
Learned: Always check file type before acting.

Level 13 → 14

Command:
ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220
Why: Login using SSH key authentication.
Learned: Private key permissions are enforced.

Level 14 → 15

Command: cat /etc/bandit_pass/bandit14
Why: Read protected password file.
Learned: Permissions control access.

Level 16 → 17

Command:
nmap localhost -p 31000-32000
printf "%s\n" "<LEVEL16_PASSWORD>" | openssl s_client -connect localhost:<OPEN_PORT>

Why: Find the correct SSL service and send the password.
Learned: Scan first, then interact with the right service.

Level 17 → 18

Command: diff passwords.old passwords.new
Why: Identify the only changed line.
Learned: Comparing files is faster than searching manually.

Level 18 → 19

Command:
ssh bandit18@bandit.labs.overthewire.org -p 2220 "cat readme"
Why: Run a command before forced logout.
Learned: SSH can execute commands without a shell.

Level 19 → 20

Command:
./bandit20-do cat /etc/bandit_pass/bandit20
Why: SUID binary runs as another user.
Learned: SUID allows privilege escalation.

Level 20 → 21

Command:

Terminal 1:
echo -n "<LEVEL20_PASSWORD>" | nc -l -p 12345

Terminal 2:
./suconnect 12345

Why: Pass password through a local port.
Learned: Programs can securely communicate over localhost.
