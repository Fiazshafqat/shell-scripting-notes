# Conditional Statements

## If Statement

```bash
if [ condition ]
then
  commands
fi
```

Example:

```bash
num=10
if [ $num -gt 5 ]
then
  echo "Number is greater than 5"
fi
```

---

## If-Else Statement

```bash
if [ condition ]
then
  commands
else
  commands
fi
```

Example:

```bash
num=3
if [ $num -gt 5 ]
then
  echo "Greater"
else
  echo "Smaller"
fi
```

---

## Elif Statement

```bash
if [ condition ]
then
  commands
elif [ condition ]
then
  commands
else
  commands
fi
```

Example:

```bash
num=10
if [ $num -eq 5 ]
then
  echo "Five"
elif [ $num -eq 10 ]
then
  echo "Ten"
else
  echo "Other"
fi
```

---

## Switch Statement (case)

```bash
case $var in
  1)
    echo "One" ;;
  2)
    echo "Two" ;;
  *)
    echo "Invalid" ;;
esac
```

Example:

```bash
fruit="apple"

case $fruit in
  apple)
    echo "Apple selected" ;;
  mango)
    echo "Mango selected" ;;
  *)
    echo "Unknown fruit" ;;
esac
```
