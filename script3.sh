#!/bin/bash
# Shebang line

# Script 3: Disk and Permission Auditor
# This script checks directories, their permissions, and size

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")  
# Array storing important system directories

# Loop through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then   # Check if directory exists
        
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')  
        # Get permissions, owner, and group of directory
        
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)  
        # Get size of directory (ignore errors using 2>/dev/null)
        
        echo "$DIR => $PERMS | Size: $SIZE"  # Print details
    else
        echo "$DIR not found"  # If directory does not exist
    fi
done

# Check if Git configuration file exists
if [ -f ~/.gitconfig ]; then
    echo "Git config exists:"   # Print message
    ls -l ~/.gitconfig         # Show file details
fi
