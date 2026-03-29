#!/bin/bash
# Shebang line: tells system to use bash shell to run this script

# Script 1: System Identity Report
# This script displays basic system information

STUDENT_NAME="Pari Goel"   # Variable to store student name
SOFTWARE="Git"             # Variable to store chosen software name

KERNEL=$(uname -r)         # Fetch Linux kernel version using uname command
USER_NAME=$(whoami)        # Get current logged-in user
UPTIME=$(uptime -p)        # Get system uptime in readable format
DATE=$(date)               # Get current system date and time
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)  
# Extract Linux distribution name from os-release file

echo "==============================="   # Print separator line
echo " Open Source Audit - $STUDENT_NAME"  # Print title with student name
echo "==============================="   # Print separator line
echo "Software : $SOFTWARE"             # Display chosen software
echo "Kernel   : $KERNEL"               # Display kernel version
echo "User     : $USER_NAME"            # Display current user
echo "Uptime   : $UPTIME"               # Display system uptime
echo "Date     : $DATE"                 # Display current date
echo "Distro   : $DISTRO"               # Display Linux distribution
echo "License  : GNU GPL (Linux Kernel)"  # Display license info
