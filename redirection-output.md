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
