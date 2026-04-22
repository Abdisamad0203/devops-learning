# DevOps Learning

This repo is where I’m documenting my hands-on DevOps learning as I go.

So far I’ve covered Linux fundamentals and Bash scripting.

## Linux

This section covers the core Linux basics I’ve been working through, including:

- file system navigation  
- permissions and ownership  
- process management  
- text processing tools like grep, awk and sed  
- OverTheWire Bandit up to level 20  

Most of this part is note-based and focused on getting comfortable in the terminal before moving deeper into DevOps tools.

## Bash Scripting

This section contains my first Bash scripting exercises.

Scripts included:

- `calculator.sh` — a basic calculator that takes two numbers and performs arithmetic operations  
- `file_ops.sh` — creates a directory and file, writes to it, and shows the contents  
- `challenge3.sh` — checks whether a file exists and shows its permissions  
- `challenge4.sh` — creates a timestamped backup folder and copies `.txt` files into it  

### What I learned from Bash so far

- how to take user input with `read`  
- how to use `if` statements for decision making  
- how file paths affect whether a script works or fails  
- how to check read, write and execute permissions  
- how Bash can automate simple repetitive tasks  

### One issue I ran into

The main thing that caught me out was file paths.

At first I was running scripts from one location while the files I needed were sitting in another, so things kept failing even though the script itself was mostly fine. Fixing that helped me understand relative paths properly.

## Why Bash matters in DevOps

Bash matters because a lot of DevOps work starts with being comfortable in the terminal.

Even when using tools like Docker, CI/CD pipelines or cloud services, you still end up reading logs, moving around Linux systems, automating tasks and writing small scripts to save time.

## Next

Next up in my learning:

- Git  
- Networking  
- Docker  
- AWS  
- Terraform  
- CI/CD  
- Kubernetes  
