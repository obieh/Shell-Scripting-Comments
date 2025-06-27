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

