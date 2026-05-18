# Redirection Output

## Definition
Redirection is used to send output or errors to files instead of displaying them on the terminal.

---

## Types of Redirection

| Operator | Purpose |
|----------|----------|
| `>` | Redirect output (overwrite) |
| `>>` | Redirect output (append) |
| `2>` | Redirect error |
| `&>` | Redirect output and error |

---

## Example 1: Overwrite Output

```bash
echo "Hello World" > file.txt
```

### Output in file.txt
```bash
Hello World
```

---

## Example 2: Append Output

```bash
echo "New Line" >> file.txt
```

---

## Example 3: Redirect Error

```bash
ls wrongfile 2> error.txt
```

### Output in error.txt
```bash
ls: cannot access 'wrongfile': No such file or directory
```
# Additional Redirection Example: /dev/null

## Definition
`/dev/null` is a special file in Linux/Unix that discards all data written to it.  
It is also called a **black hole** because anything redirected to it disappears.

---

## Common Uses of `/dev/null`

| Command | Purpose |
|----------|----------|
| `> /dev/null` | Discard standard output |
| `2> /dev/null` | Discard error messages |
| `&> /dev/null` | Discard both output and errors |

---

## Example 1: Hide Standard Output

```bash
echo "Hello World" > /dev/null
```

### Output
```bash
No output displayed on terminal
```

---

## Example 2: Hide Error Messages

```bash
ls wrongfile 2> /dev/null
```

### Output
```bash
Error message hidden
```

---

## Example 3: Hide Both Output and Errors

```bash
ls wrongfile &> /dev/null
```

### Output
```bash
No output or error displayed
```

---

## Example 4: Check Command Silently

```bash
#!/bin/bash

mkdir testdir > /dev/null 2>&1

if [ $? -eq 0 ]
then
    echo "Directory created"
else
    echo "Directory already exists"
fi
```

### Output
```bash
Directory created
```
