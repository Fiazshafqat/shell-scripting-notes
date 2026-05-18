# Nohup Command in Linux

## Definition
`nohup` stands for **No Hang Up**.  
It is used to run a command or script in the background so it continues running even after the terminal is closed or the user logs out.

---

# Syntax

```bash
nohup command &
```

- `nohup` → Prevents the process from stopping after logout
- `&` → Runs the process in the background

---

# Example 1: Run a Script in Background

```bash
nohup ./backup.sh &
```

### Output
```bash
[1] 12345
```

- `12345` is the Process ID (PID)

---

# Example 2: Save Output to a Custom File

```bash
nohup ./backup.sh > output.log 2>&1 &
```

## Explanation

| Part | Purpose |
|------|----------|
| `>` | Redirect output |
| `output.log` | Save output in file |
| `2>&1` | Redirect errors to same file |
| `&` | Run in background |

---

# Example 3: Default Output File

```bash
nohup ping google.com &
```

### Output
```bash
nohup: ignoring input and appending output to 'nohup.out'
```

- By default, output is saved in:
```bash
nohup.out
```

---

# Check Running Background Process

```bash
ps -ef | grep backup.sh
```

---

# Stop Background Process

```bash
kill PID
```

## Example
```bash
kill 12345
```

---

# Real-Time Log Monitoring

```bash
tail -f output.log
```

---

# Practical Example

## Script: longtask.sh

```bash
#!/bin/bash

for i in {1..5}
do
    echo "Processing Step $i"
    sleep 5
done
```

---

## Run Script with nohup

```bash
nohup ./longtask.sh > task.log 2>&1 &
```

---

## Check Log Output

```bash
cat task.log
```

### Output
```bash
Processing Step 1
Processing Step 2
Processing Step 3
Processing Step 4
Processing Step 5
```
