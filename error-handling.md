# Error Handling

## Definition
Error handling is used to detect and manage errors in scripts.

---

## Example 1: Check Command Success

```bash
#!/bin/bash

mkdir test_folder

if [ $? -eq 0 ]
then
    echo "Directory created successfully"
else
    echo "Failed to create directory"
fi
```

### Output
```bash
Directory created successfully
```

---

## Example 2: Exit on Error

```bash
#!/bin/bash

set -e

cp file1.txt /backup/
echo "Backup completed"
```

### Explanation
- `set -e` stops the script immediately if any command fails.

---

## Example 3: Custom Error Message

```bash
#!/bin/bash

FILE="data.txt"

if [ ! -f $FILE ]
then
    echo "Error: File does not exist"
    exit 1
fi

echo "File found"
```

### Output
```bash
Error: File does not exist
```
