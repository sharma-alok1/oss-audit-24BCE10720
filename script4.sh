#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE="$1"
KEYWORD="${2:-error}"  # Default keyword is "error"
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "File not found!"
    exit 1
fi

# Count keyword occurrences line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5