#!/bin/bash
# for loop example

for ip in $(seq 1 10) 
do
    echo 10.11.1.$ip
done

# could have used range instead of seq: for ip in range{1..10}
