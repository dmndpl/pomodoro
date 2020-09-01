#!/bin/bash

for i in {1..$3}
do
  # hostnames swap
  # notify start
  echo "Started pomodor number:" $i
  sleep ${1}m
  # notify revert
  echo "Started break number:" $i
  # hostnames revert
  sleep ${2}m
done
