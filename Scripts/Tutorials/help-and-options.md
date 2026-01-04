# Add help and options in a bash script

## Options (arguments)
The first argument to a shell script is available as the variable $1, so the simplest implementation would be 
```
if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` [somestuff]"
  exit 0
fi
```

```
# Simple Zone Transfer Bash Script
# $1 is the first argument given after the bash script
# Check if argument was given, if not, print usage

if [ -z "$1" ]; then
  echo "[*] Simple Zone transfer script"
  echo "[*] Usage : $0 <domain name> "
  exit 0
fi
```


```
#!/bin/bash

if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` [somestuff]"
  exit 0
fi

if [ "$1" == "ls" ]; then
  echo "Listing files in the current directory"
  ls
  exit 0
fi

if [ "$1" == "pwd" ]; then
  echo "Printing current directory"
  pwd
  exit 0
fi
```
