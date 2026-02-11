Bandit Level 16 → Level 17

Challenge: Find the correct SSL service, send the Level 16 password, and get the SSH private key for the next level.

Solution:

nmap localhost -p 31000-32000
printf "%s\n" "<LEVEL16_PASSWORD>" | openssl s_client -connect localhost:<PORT>
# copy the RSA private key into a file locally (NOT in git)


Explanation:

nmap scans the port range to find open services

openssl s_client connects to the SSL service and prints the response (key)

Password: [level 16 password]

What I learned: Scan first, then interact with the right service.

Bandit Level 17 → Level 18

Challenge: Find the only changed line between two files.

Solution:

diff passwords.old passwords.new
# or
grep -vxFf passwords.old passwords.new


Explanation:

diff shows differences between two files

grep -vxFf prints lines in new that don’t exist in old

Password: [level 17 password]

What I learned: Comparing files is faster than searching manually.

Bandit Level 18 → Level 19

Challenge: You get kicked out on login; still read the password.

Solution:

ssh bandit18@bandit.labs.overthewire.org -p 2220 "cat readme"


Explanation:

Running a remote command reads the file before the forced logout triggers

Password: [level 18 password]

What I learned: You can run a command over SSH without an interactive shell.

Bandit Level 19 → Level 20

Challenge: Use a SUID binary to read the next password.

Solution:

./bandit20-do cat /etc/bandit_pass/bandit20


Explanation:

bandit20-do runs commands as bandit20 because it’s SUID

Password: [level 19 password]

What I learned: SUID lets binaries run with another user’s permissions.

Bandit Level 20 → Level 21

Challenge: Use the suconnect program to talk to a local port and pass the password.

Solution:

# terminal 1 (bandit20)
echo -n "<LEVEL20_PASSWORD>" | nc -l -p 12345

# terminal 2 (bandit20)
./suconnect 12345


Explanation:

nc -l -p starts a listener that sends the password

suconnect connects to that port and returns the next password

Password: [level 20 password]

What I learned: Local services + simple TCP tools can unlock access.
