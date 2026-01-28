# DevOps-Learning-Repo 🤓
This repository documents my DevOps learning journey.

My takeaways and hardest challenges I faced are also included.

----------------------------------------------------------

## OverTheWire Bandit — Breakdown 🧐

| Level | Challenge | Solution (Command) |
|------:|----------|--------------------|
| 0 | Connect to the Bandit server | `ssh bandit0@bandit.labs.overthewire.org -p 2220` |
| 0 → 1 | Read a file in the home directory | `cat readme` |
| 1 → 2 | Read a file starting with a dash | `cat -- -filename` |
| 2 → 3 | Read a file with spaces in the name | `cat "file name with spaces"` |
| 3 → 4 | Find and read a hidden file | `ls -a` → `cat .hiddenfile` |
| 4 → 5 | Identify the only human-readable file | `file *` → `cat <file>` |
| 5 → 6 | Find a file by size and permissions | `find . -type f -size <size> -readable` |
| 6 → 7 | Find a file by user and group | `find / -user <user> -group <group> 2>/dev/null` |
| 7 → 8 | Search for a password in a file | `grep <keyword> data.txt` |
| 8 → 9 | Find the unique line | `sort data.txt | uniq -u` |
| 9 → 10 | Extract readable strings from binary | `strings data.txt` |
| 10 → 11 | Decode base64 data | `base64 -d data.txt` |
| 11 → 12 | Decode ROT13 text | `tr 'A-Za-z' 'N-ZA-Mn-za-m'` |
| 12 → 13 | Extract multiple compressed files | `file data` → rename → decompress `xxd - r`  |
| 13 → 14 | Login using an SSH private key | `chmod 600 key` → `ssh -i key bandit14@host -p 2220` |
| 14 → 15 | Connect to a local TCP service | `nc localhost <port>` |
| 15 → 16 | Connect to an SSL/TLS service | `openssl s_client -connect localhost:<port>` |
| 16 → 17 | Find the SSL-enabled port | `nmap -p <range> localhost` |
| 17 → 18 | Compare two files | `diff file1 file2` |
| 18 → 19 | Bypass a shell that exits | `ssh user@host -p 2220 "cat <file>"` |
| 19 → 20 | Exploit a setuid binary | `./setuid_binary` |
| 20 → 21 | Communicate between processes | `nc -lvp <port>` |
| 21 → 22 | Inspect cron jobs | `ls /etc/cron.d` |
| 22 → 23 | Read and execute a script | `cat script.sh` |
| 23 → 24 | Abuse insecure temp file handling | `mktemp` |
| 24 → 25 | Brute-force numeric input | `for i in {0000..9999}; do echo $i; done | nc localhost <port>` |
| 25 → 26 | Escape restricted shell | `v` → `:set shell=/bin/bash` → `:shell` |
| 26 → 27 | Use allowed binaries creatively | `./binary` |
| 27 → 31 | Extract info from Git repos | `git log`, `git branch -a`, `git tag` |
| 31 → 33 | Escape restricted environments | `env`, `export`, `$0` |

----------------------------------------------------------

### Hardest challenges 🤯
1. **Shifting mindset** - Shifting my mindset from copy-pasting solutions to understanding when and why a command is relevant to a level.
2. **Getting stuck in** - Forcing myself to get hands-on and try things even without full understanding, instead of waiting for certainty.
3. **New language** - Learning and becoming comfortable with new Linux syntax and command structures.

----------------------------------------------------------

### Takeaways 🥳
1. **Simplicity is key** - Realizing that overcomplicating solutions often wastes time, and starting with simple commands often works best.
2. **Manual** - Using man consistently helped me understand command options and flags, saving trial-and-error attempts. 
3. **Step by step** - Breaking problems into smaller steps made even complex levels approachable and less intimidating.

----------------------------------------------------------

# Bash scripting 👾
This module was a big step for me when it came to learning how to think like a DevOps engineer. I was pushed to understanding the why behind every action I made.

These are the descriptions for the scripts I wrote for the bash scripting assignment and some key learnings (all scripts can be found in the bash-scripting folder):
### Challenge 1:
Prompts the user to enter two numbers
Calculates addition, subtraction, multiplication for the numbers
Checks if the second number is 0 before dividing (to prevent division by zero)
Prints all results in a single line, with an error message for division if needed

### Challenge 2: 
Creates a directory called bash_demo (if it doesn’t exist)
Creates a text file demo.txt inside it with some content
Displays the content of demo.txt in the terminal

### Challenge 3:
Prompts the user for a filename
Checks if the file exists
Prints a message showing exactly which permissions (read, write, execute) the current user has on that file

### Challenge 4:
Prompts the user to enter a directory to back up
Checks if the directory exists; if not, exits with an error
Creates a backup directory with _backup_<timestamp> appended
Copies all files and subdirectories into the backup
Counts and prints how many files were backed up

## Key learnings 🔑
Working on these Bash scripts gave me hands-on experience automating tasks, handling user input, and managing files and directories efficiently. I gained confidence in writing reliable, structured scripts that can adapt to different situations, and I now appreciate how essential scripting skills are for a DevOps engineer in streamlining workflows, automating repetitive tasks, and maintaining systems effectively.

----------------------------------------------------------

# Networking 🌐
This module helped me realize how integral networking is to working as a DevOps engineer. Modern systems rely heavily on networking concepts, and even simple deployments depend on many components working together correctly.

One of the biggest lessons for me was realizing just how complex networking systems are, especially concepts like DNS and the OSI model. Learning how requests move through different layers and how services communicate across a network gave me a much clearer understanding of what actually happens behind the scenes when an application is accessed.

Another major takeaway was the importance of troubleshooting. Misconfigurations such as using a private IP instead of a public IP, incorrect DNS records, or missing firewall rules can completely break connectivity. Learning how to methodically diagnose issues and verify each layer of the network was a key part of this project and is an essential skill in DevOps work.

One of the most difficult aspects of this learning process was being introduced to many new terms at once. Networking involves a large amount of vocabulary, and understanding how these terms relate to each other takes time and repetition.

I also found it challenging to understand where everything fits and what each component’s role is. Concepts such as IP addresses, DNS, subnetting, switches, routers, and WANs all interact with each other, and it was initially difficult to build a clear mental model of how data flows through these systems.

Working through real configuration issues helped connect these concepts together. Seeing how DNS points to an IP address, how routing and subnetting control traffic flow, and how services are exposed through ports made the theory far easier to understand in practice.

This module highlighted that networking knowledge is not optional in DevOps. A strong understanding of networking fundamentals makes it easier to deploy systems, diagnose failures, and reason about infrastructure behavior. While the learning curve was steep, working through these concepts hands on significantly strengthened my foundational understanding.


