#!/bin/sh

x=0
secs=10
while [ "$x" -lt 10 ]; do
   x=$((x+1))
   echo test log
   sleep 1
done

a=$?
echo "tests have done"
exit $a