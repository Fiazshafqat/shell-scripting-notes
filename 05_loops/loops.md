## Definition
Loops are used to execute a block of code repeatedly until a condition is met.

---

## For Loop

### Syntax
```bash
for variable in list
do
    commands
done
```

### Example
```bash
#!/bin/bash

for num in 1 2 3 4 5
do
    echo "Number: $num"
done
```

### Output
```bash
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

---

## While Loop

### Syntax
```bash
while [ condition ]
do
    commands
done
```

### Example
```bash
#!/bin/bash

count=1

while [ $count -le 5 ]
do
    echo "Count: $count"
    ((count++))
done
```

### Output
```bash
Count: 1
Count: 2
Count: 3
Count: 4
Count: 5
```

---

## Break Statement

### Definition
`break` is used to terminate the loop immediately.

### Example
```bash
#!/bin/bash

for num in 1 2 3 4 5
do
    if [ $num -eq 3 ]
    then
        break
    fi

    echo "Number: $num"
done
```

### Output
```bash
Number: 1
Number: 2
```

---

## Continue Statement

### Definition
`continue` skips the current iteration and moves to the next iteration.

### Example
```bash
#!/bin/bash

for num in 1 2 3 4 5
do
    if [ $num -eq 3 ]
    then
        continue
    fi

    echo "Number: $num"
done
```

### Output
```bash
Number: 1
Number: 2
Number: 4
Number: 5
```

---
