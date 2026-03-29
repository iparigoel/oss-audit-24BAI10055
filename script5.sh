#!/bin/bash
# Shebang line

# Script 5: Open Source Manifesto Generator
# This script takes user input and generates a text file

# Ask user for input
read -p "Tool you use: " TOOL        # Input tool name
read -p "Freedom means: " FREEDOM    # Input meaning of freedom
read -p "What will you build: " BUILD  # Input idea to build

DATE=$(date)   # Get current date
FILE="manifesto.txt"  # Output file name

# Write content to file (overwrite if exists)
echo "On $DATE, I believe in open source." > $FILE  

# Append more lines to file
echo "Using $TOOL gives me $FREEDOM." >> $FILE  
echo "I want to build $BUILD and share it freely." >> $FILE  

echo "Saved to $FILE"  # Confirmation message
cat $FILE             # Display file content
