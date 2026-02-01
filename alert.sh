#!/bin/bash

MESSAGE=$1
echo "ALERT: $MESSAGE"

# Email alert (optional)
# echo "$MESSAGE" | mail -s "Server Alert" admin@example.com

