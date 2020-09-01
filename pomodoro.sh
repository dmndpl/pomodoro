#!/bin/bash

let "WORK_TIME_SECONDS=$1 * 60"
echo $WORK_TIME_SECONDS
let "PAUSE_TIME_SECONDS=$2 * 60"
echo $PAUSE_TIME_SECONDS

for i in {1..$3}
do
  # hostnames swap
  # notify start
  echo "Started pomodoro number:" $i
  sleep $WORK_TIME_SECONDS
  # notify revert
  echo "Started break number:" $i
  # hostnames revert
  sleep $PAUSE_TIME_SECONDS
done
