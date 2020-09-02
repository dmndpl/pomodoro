#!/bin/bash

function displayWorkSessionNotification {
  notificationString="Pomodoro number $1"
  notificationTitle="Pomodoro Started"
  notificationString="display notification \"${notificationString}\" with title \"${notificationTitle}\""
  echo $notificationString
  osascript -e "${notificationString}"
}

function displayPauseSessionNotification {
  notificationString="Pause number $1"
  notificationTitle="Pause Started"
  notificationString="display notification \"${notificationString}\" with title \"${notificationTitle}\""
  echo $notificationString
  osascript -e "${notificationString}"
}

let "WORK_TIME_SECONDS=$1 * 60"

let "PAUSE_TIME_SECONDS=$2 * 60"

for i in `seq $3`
do
  # hostnames swap
  # notify start
  displayWorkSessionNotification $i
  sleep $WORK_TIME_SECONDS
  # notify revert
  displayPauseSessionNotification $i
  # hostnames revert
  sleep $PAUSE_TIME_SECONDS
done
