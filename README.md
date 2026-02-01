# Server Health Monitoring Project

## 📌 Project Overview

This project is a **Linux Shell Scripting based Server Health Monitoring system**. It monitors **CPU, Memory, and Disk usage** on Linux servers and logs the results. Alerts are triggered if thresholds are exceeded.

---

## 🚀 Features

* Monitors CPU utilization
* Monitors Memory usage
* Monitors Disk usage
* Threshold-based alerts
* Centralized logging
* Easy automation using cron jobs

---

## 🗂 Project Structure

```
server-health-monitor/
├── health_check.sh  # Main monitoring script
├── alert.sh         # Alert script
├── config.conf      # Configuration file
├── logs/            # Logs directory
└── README.md        # Project documentation
```

---

## ⚙️ Setup Instructions

### 1️⃣ Navigate to project folder

```bash
cd ~/Projects/Shell-Projects/server-health-monitor
```

### 2️⃣ Make scripts executable

```bash
chmod +x health_check.sh alert.sh
```

### 3️⃣ Create logs directory

```bash
mkdir -p logs
touch logs/health.log
```

### 4️⃣ Run the monitoring script

```bash
./health_check.sh
```

### 5️⃣ Check logs

```bash
cat logs/health.log
tail -f logs/health.log
```

---

## ⏰ Automation Using Cron

To run the script every 5 minutes:

```bash
crontab -e
```

Add the line:

```bash
*/5 * * * * /home/aaftab/Projects/Shell-Projects/server-health-monitor/health_check.sh
```

---

## 📌 Sample Log Output

```
2026-02-01 09:59:15 | CPU: 1% | MEM: 14% | DISK: 2%
2026-02-01 10:05:01 | ALERT: CPU usage is high - 85%
```

---

## 🧠 Concepts Used

* Bash scripting
* Linux commands (`top`, `free`, `df`)
* Cron scheduling
* Logging
* Threshold-based alerting

---

## 📌 Resume Description

**Automated Server Health Monitoring System**

* Built a Bash-based tool to track CPU, memory, and disk usage
* Implemented threshold-based alerts and centralized logging
* Automated monitoring with cron jobs

---

## 👤 Author

**Aaftab Pathan**
Aspiring AWS & DevOps Engineer

---

## ✅ Status

Project is **tested and ready for use**.
