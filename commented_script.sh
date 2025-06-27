#!/bin/bash

# ================================================
# Script: Commenting Demo
# Author: ObieShenk
# Date: Date: $(date +%Y-%m-%d)
# Description: This script demonstrates:
#   - Basic shell scripting with functions
#   - Proper commenting practices
#   - File and directory operations
# =============================================================================
# WELCOME MESSAGE
# =============================================================================


# Display welcome message to the user
echo "Welcome to Script Commenting Class"

# Add a blank line for better readability
echo

# =============================================================================
# DIRECTORY CREATION
# =============================================================================

# Define the directory name we want to create
DIR_NAME="script_demo_directory"

# Create a new directory in the current working directory
# The -p flag ensures no error if directory already exists
mkdir -p "$DIR_NAME"

# Inform the user about the directory creation
echo "✓ Created directory: $DIR_NAME"

# =============================================================================
# FILE CREATION
# =============================================================================

# Change to the newly created directory
cd "$DIR_NAME"

# Create the first text file
# Using touch command to create an empty file
touch text.txt
echo "✓ Created file: text.txt"

# Create the second text file
touch text2.txt
echo "✓ Created file: text2.txt"

# Add some sample content to the files
echo "This is the first text file" > text.txt
echo "This is the second text file" > text2.txt

# =============================================================================
# DIRECTORY LISTING
# =============================================================================

# Add a separator line for better output formatting
echo
echo "--- Files in the current directory ---"

# List all files in the current directory
# -l flag provides detailed listing (long format)
# -a flag shows all files including hidden ones
ls -la

# =============================================================================
# CLEANUP AND NAVIGATION
# =============================================================================

# Return to the parent directory (where we started)
cd ..

# =============================================================================
# GOODBYE MESSAGE
# =============================================================================

# Add some spacing for better presentation
echo
echo "==========================================="

# Display the goodbye message
echo "Goodbye from script commenting class, hope you had fun learning"

# Add final spacing
echo "==========================================="
echo

# =============================================================================
# SCRIPT COMPLETION
# =============================================================================

# Exit the script successfully
# Exit code 0 indicates successful execution
exit 0
