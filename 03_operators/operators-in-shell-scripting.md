# Operators in Shell Scripting

## Arithmetic Operators

| Operator | Meaning        |
| -------- | -------------- |
| +        | Addition       |
| -        | Subtraction    |
| *        | Multiplication |
| /        | Division       |
| %        | Modulus        |

Example:

```bash
a=10
b=5
echo $((a+b))
```

---

## Relational Operators

| Operator | Meaning          |
| -------- | ---------------- |
| -eq      | Equal            |
| -ne      | Not Equal        |
| -gt      | Greater Than     |
| -lt      | Less Than        |
| -ge      | Greater or Equal |
| -le      | Less or Equal    |

Example:

```bash
if [ $a -gt $b ]
then
  echo "a is greater"
fi
```

---

## String Operators

| Operator | Meaning             |
| -------- | ------------------- |
| =        | Equal               |
| !=       | Not Equal           |
| -z       | String is empty     |
| -n       | String is not empty |

Example:

```bash
str="Hello"
if [ -n "$str" ]
then
  echo "String is not empty"
fi
```

---

## Boolean Operators

| Operator | Meaning |   |    |
| -------- | ------- | - | -- |
| &&       | AND     |   |    |
|          |         |   | OR |
| !        | NOT     |   |    |

Example:

```bash
if [ $a -gt 5 ] && [ $b -lt 10 ]
then
  echo "Condition True"
fi
```

---

## File Operators

| Operator | Meaning            |
| -------- | ------------------ |
| -f       | File exists        |
| -d       | Directory exists   |
| -r       | Read permission    |
| -w       | Write permission   |
| -x       | Execute permission |

Example:

```bash
if [ -f test.txt ]
then
  echo "File exists"
fi
```
