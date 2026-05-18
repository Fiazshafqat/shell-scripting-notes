## Definition
Functions are reusable blocks of code used to perform specific tasks.

---

## Function Syntax

```bash
function_name() {
    commands
}
```

---

## Example 1: Create and Call Function

```bash
#!/bin/bash

greet() {
    echo "Welcome to Bash Scripting"
}

greet
```

### Output
```bash
Welcome to Bash Scripting
```

---

## Example 2: Function with Arguments

```bash
#!/bin/bash

addition() {
    sum=$(( $1 + $2 ))
    echo "Sum = $sum"
}

addition 10 20
```

### Output
```bash
Sum = 30
```

---

## Example 3: Function Return Value

```bash
#!/bin/bash

check_number() {
    if [ $1 -gt 0 ]
    then
        return 0
    else
        return 1
    fi
}

check_number 5

echo "Return Status: $?"
```

### Output
```bash
Return Status: 0
```
