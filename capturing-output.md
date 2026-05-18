# Capturing Output

## Definition
Capturing output means storing command output into a variable.

---

## Syntax

```bash
variable=$(command)
```

---

## Example

```bash
#!/bin/bash

current_date=$(date)

echo "Today's Date: $current_date"
```

### Output
```bash
Today's Date: Mon May 18 10:30:00 UTC 2026
```
