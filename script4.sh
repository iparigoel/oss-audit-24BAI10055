#!/bin/bash
# Shebang line

# Script 4: Log File Analyzer
# This script counts occurrences of a keyword in a log file

LOGFILE=${1:-/var/log/boot.log}               # First argument: log file path
KEYWORD=${2:-error}      # Second argument: keyword (default = error)
COUNT=0                  # Initialize counter to 0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "File not found"  # Print error message
    exit 1                # Exit script
fi

# Read file line by line
while IFS= read -r LINE; do
    # Check if line contains keyword (case insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))  # Increment counter
    fi
done < "$LOGFILE"

echo "'$KEYWORD' found $COUNT times"  # Print total count

echo "Last 5 matches:"  # Print heading
grep -i "$KEYWORD" "$LOGFILE" | tail -5  
# Show last 5 matching lines
