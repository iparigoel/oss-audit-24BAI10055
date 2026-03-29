#!/bin/bash
# Shebang line for bash shell

# Script 2: Package Inspector
# This script checks if Git is installed and shows details

PACKAGE="git"   # Variable storing package name

# Check if package is installed using dpkg
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."   # Print if package exists
    git --version                  # Show Git version
else
    echo "$PACKAGE is NOT installed."  # Print if package not found
fi

# Case statement to print description based on package name
case $PACKAGE in
    git) echo "Git: backbone of modern development" ;;  # If package is git
    *) echo "Unknown package" ;;                        # Default case
esac
