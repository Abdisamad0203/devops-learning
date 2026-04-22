# DevOps Learning

This repo is where I’m documenting my hands-on DevOps learning as I go.

So far I’ve covered Linux fundamentals and Bash scripting.

## Linux

I’ve been working through the core Linux basics, including:

- file system navigation  
- permissions and ownership  
- process management  
- text processing tools like grep, awk and sed  
- OverTheWire Bandit up to level 20  

Most of this has been about getting comfortable in the terminal before moving into more advanced DevOps tools.

## Bash Scripting

This section contains my first Bash scripting exercises.

Scripts included:

- calculator.sh — takes two numbers and performs basic arithmetic  
- file_ops.sh — creates a directory and file, writes to it, and displays the contents  
- challenge3.sh — checks if a file exists and shows its permissions  
- challenge4.sh — creates a timestamped backup folder and copies .txt files into it  

### What I learned

- taking user input with read  
- using if statements for logic  
- how file paths can break or fix a script  
- checking read, write and execute permissions  
- using Bash to automate small repetitive tasks  

### One issue I ran into

File paths confused me at the start.

I was running scripts from one location while the files I needed were somewhere else, so things kept failing even though the script itself looked fine. Once I fixed that, it made a lot more sense.

## Why Bash matters in DevOps

A lot of DevOps work starts in the terminal.

Even when using tools like Docker, CI/CD or cloud platforms, you still end up navigating systems, checking logs, and automating tasks. Bash is what ties a lot of that together.

## Next

Next up in my learning:

- Git  
- Networking  
- Docker  
- AWS  
- Terraform  
- CI/CD  
- Kubernetes  
