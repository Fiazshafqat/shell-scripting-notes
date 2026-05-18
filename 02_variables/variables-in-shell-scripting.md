# Variables in Shell Scripting

## What are Variables?

Variables are used to store data values and these values can be used later.

Example:

```bash
name="Ali"
```

---

## Types of Variables

### 1. Local Variables

```bash
name="Ali"
```

### 2. Environment Variables

```bash
export CITY="Berlin"
```

### 3. Special Variables

| Variable | Meaning             |
| -------- | ------------------- |
| $$       | Current shell PID   |
| $?       | Last command status |
| $0       | Script name         |
| $1, $2   | Script arguments    |

---

## Define and Retrieve Variables

### Define Variable

```bash
name="Ahmed"
```

### Retrieve Variable

```bash
echo $name
```
