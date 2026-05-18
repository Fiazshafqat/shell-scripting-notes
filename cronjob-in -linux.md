# Cron Job in Linux

## Definition
A **cron job** is a scheduled task in Linux that runs automatically at specific time intervals (minute, hour, day, month, or weekday).

It is used for automation like:
- backups
- system monitoring
- sending emails
- running scripts automatically

---

# Cron Syntax

```bash
* * * * * command
│ │ │ │ │
│ │ │ │ └── Day of Week (0 - 7) (Sunday = 0 or 7)
│ │ │ └──── Month (1 - 12)
│ │ └────── Day of Month (1 - 31)
│ └──────── Hour (0 - 23)
└────────── Minute (0 - 59)
```

---

# Basic Cron Examples

## Run every minute
```bash
* * * * * /home/user/script.sh
```

## Run every hour
```bash
0 * * * * /home/user/script.sh
```

## Run every day at 2 AM
```bash
0 2 * * * /home/user/script.sh
```

## Run every Sunday at 5 PM
```bash
0 17 * * 0 /home/user/script.sh
```

---

# Managing Cron Jobs

## Open Crontab Editor
```bash
crontab -e
```

---

## List Cron Jobs
```bash
crontab -l
```

---

## Remove All Cron Jobs
```bash
crontab -r
```

---

# Example 1: Backup Script Every Day

```bash
0 1 * * * /home/user/backup.sh
```

### Meaning
Runs backup script every day at **1:00 AM**

---

# Example 2: Write Output to File

```bash
*/5 * * * * echo "Hello Cron" >> /home/user/cron.log
```

### Meaning
Runs every 5 minutes and appends text to file

---

# Example 3: Run Script with Full Path

```bash
0 3 * * * /bin/bash /home/user/script.sh
```

---

# Example Script

## script.sh
```bash
#!/bin/bash

echo "Cron job executed at $(date)" >> /home/user/cron_output.log
```

---

# Important Notes

- Always use **absolute paths** in cron jobs
- Cron does NOT load environment variables like terminal
- Redirect output (`>>`) to debug issues
- Check logs if cron is not working:
```bash
cat /var/log/syslog | grep cron
```

---

# Check Cron Service Status

```bash
systemctl status cron
```

---

# Restart Cron Service

```bash
sudo systemctl restart cron
```
