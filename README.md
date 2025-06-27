# Shell-Scripting-Comments
This project demonstrates the use of comments to enhance readability, maintenance and collaboration.

# Understanding Comments in Shell Scripting

## What Are Comments?

### Comments are lines in your script that the computer ignores when running the code. They're purely for human readers to:

* Explain what the code does
* Document why certain decisions were made
* Leave notes for other developers
* Temporarily disable code without deleting it.

## Types of Comments in Shell Scripts.
1. Single-line comments: Start with a # symbol. Everything after # on that line is ignored.

```bash
# This is a single-line comment
echo "Hello World"  # You can also add comments after commands
```

2. Multi-line comments (block comments). While shell doesn't have a dedicated multi-line comment syntax, there are workarounds.

```bash
: '
This is a multi-line comment.
It spans several lines.
The colon and single quotes make this work.
'

<<'COMMENT'
Another way to create multi-line comments.
This uses a here-document that isn't assigned to anything.
COMMENT
```
## Some script comment examples
### Documenting Script Purpose

```bash
#!/bin/bash

# =============================================
# Automated Backup Script
# Created by: John Doe
# Date: 2023-10-15
# Version: 1.2
#
# Purpose: This script performs daily backups
# of the /var/www directory to AWS S3.
# Runs every night at 2 AM via cron.
# =============================================
```

### Explaining Complex Commands
```bash
# Find all .log files older than 30 days and delete them
# -type f: only files (not directories)
# -name "*.log": files ending with .log
# -mtime +30: modified more than 30 days ago
# -exec rm {} \;: execute rm on each found file
find /var/log -type f -name "*.log" -mtime +30 -exec rm {} \;
```

### Temporary Code Disabling
```bash
# Debugging code - leaving for now in case we need it again
# echo "Debug: Current directory is $(pwd)"
# ls -la

echo "Starting deployment process..."
```
### Team Collaboration

```bash
# TODO: Need to add error handling for when S3 bucket is full
# FIXME: This sleep command is a temporary workaround for race condition
# NOTE: The customer requested this specific format for the output file
```

### Production Environment Script

```bash
#!/bin/bash

# Critical Production Script - Handle with Care!
# --------------------------------------------
# This script restarts all web services in the correct order:
# 1. Load balancer
# 2. Database
# 3. Application servers
#
# WARNING: Running this during peak hours may cause downtime!
#          Always check with the on-call team first.

# Send notification that maintenance is starting
send_slack_message "#ops-alerts" "Web service restart initiated by $(whoami)"
```
## Best Practices
1. **Be clear and concise** - Don't state the obvious, explain the why.

2. **Use for complex logic** - Comment anything non-obvious.
3. **Document assumptions** - Note any special conditions or requirements.
4. **Keep comments up-to-date** - Outdated comments are worse than no comments.
5. **Include metadata** - Author, date, version when appropriate.

# Remember, good comments make your scripts more maintainable and professional, especially in team environments!

## Demo

### Create a script file named 'commented_script.sh' using nano text editor. This script will display a welcome message, create a directory called script_demo_directory, cd into the created directory, create two files text.txt and text1.txt, add content to the files, list the directory, display a goodbye message and finally cd back to the parent directory.

* Run `nano commented_script.sh`

![](./img/Pasted%20image.png)

### Begin with shebang and add proper description comments to the script.

![](./img/Pasted%20image%20(2).png)

### Add other instructions to perform the overlisted functions to the script, comment it function to make it readable.

![](./img/Pasted%20image%20(10).png)

### List the working directory to make sure the script file is present

* Run `ls` to see files and folders in your working directory

![](./img/Pasted%20image%20(3).png)


* Run `cat commented_script.sh` to confirm file contents.

![](./img/Pasted%20image%20(4).png)

* Run `ls -lar commented_script.sh` to long list and see file permisions.

![](./img/Pasted%20image%20(5).png)

* Run `chmod +x commented_script.sh` to give user execution right to the script file. List the directory again to confirm permissions.

![](./img/Pasted%20image%20(6).png)

### Execute the script to see output on terminal.

* Run `./commented_script.sh` to execute script

![](./img/Pasted%20image%20(7).png)

### Script executed as we desired. To further confirm this, ls the directory to see the demo folder created by the script. Chnge directory to the directory created by the switch, list and cat files created by the script.

![](./img/Pasted%20image%20(9).png)

### Every command in our script executed as shown above.

[commented_script.sh](./commented_script.sh)