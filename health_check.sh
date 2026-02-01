#!/bin/bash

source config.conf

DATE=$(date "+%Y-%m-%d %H:%M:%S")

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{printf "%d", 100 - $8}')
MEM_USAGE=$(free | awk '/Mem/ {printf("%.0f"), $3/$2 * 100}')
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "$DATE | CPU: $CPU_USAGE% | MEM: $MEM_USAGE% | DISK: $DISK_USAGE%" >> $LOG_FILE

check_alert() {
  if [ $1 -ge $2 ]; then
    echo "$DATE | ALERT: $3 usage is high - $1%" >> $LOG_FILE
    ./alert.sh "$3 usage is high: $1%"
  fi
}

check_alert $CPU_USAGE $CPU_THRESHOLD "CPU"
check_alert $MEM_USAGE $MEM_THRESHOLD "Memory"
check_alert $DISK_USAGE $DISK_THRESHOLD "Disk"
