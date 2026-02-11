# Bandit Levels 0–15

## Level 0 → 1
**Command:** `cat README`  
**Why:** Read file contents.  
**Learned:** Basics of `cat`.

## Level 1 → 2
**Command:** `cat "spaces in this filename"`  
**Why:** Quotes handle spaces.  
**Learned:** Shell parsing rules.

## Level 2 → 3
**Command:** `cat ./-`  
**Why:** `-` is treated as stdin without `./`.  
**Learned:** Relative paths matter.

## Level 3 → 4
**Command:** `ls -la` then `cat .hidden`  
**Why:** Hidden files start with `.`  
**Learned:** Use `-a` to see everything.

## Level 4 → 5
**Command:** `file ./inhere/* | grep text`  
**Why:** Identify readable files.  
**Learned:** `file` beats guessing.

## Level 5 → 6
**Command:**  
`find . -type f -size 1033c ! -executable -exec file {} \; | grep text`  
**Why:** Filter files by size + type.  
**Learned:** `find` is powerful.

## Level 6 → 7
**Command:**  
`find / -user bandit7 -group bandit6 -size 33c 2>/dev/null`  
**Why:** Search system-wide with ownership filters.  
**Learned:** Redirect errors.

## Level 7 → 8
**Command:** `grep millionth data.txt`  
**Why:** Find exact string.  
**Learned:** `grep` basics.

## Level 8 → 9
**Command:** `sort data.txt | uniq -u`  
**Why:** Find unique line.  
**Learned:** Pipes + text tools.

## Level 9 → 10
**Command:** `strings data.txt | grep ===`  
**Why:** Extract readable text from binary.  
**Learned:** Use `strings`.

## Level 10 → 11
**Command:** `base64 -d data.txt`  
**Why:** Decode base64.  
**Learned:** Encoding vs encryption.

## Level 11 → 12
**Command:** `tr 'A-Za-z' 'N-ZA-Mn-za-m'`  
**Why:** ROT13 cipher.  
**Learned:** Character translation.

## Level 12 → 13
**Command:**  
`xxd -r data.txt > data.bin`  
then repeatedly `file`, `mv`, `gunzip`, `bunzip2`, `tar -xf`  
**Why:** Multiple compression layers.  
**Learned:** Always check file type.

## Level 13 → 14
**Command:**  
`ssh -i sshkey.private bandit14@bandit.labs.overthewire.org -p 2220`  
**Why:** SSH key authentication.  
**Learned:** Private key permissions matter.

## Level 14 → 15
**Command:** `cat /etc/bandit_pass/bandit14`  
**Why:** Read protected password file.  
**Learned:** File permissions enforcement.
