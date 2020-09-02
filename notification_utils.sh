#!/bin/bash

function displayWorkSessionNotification {
  notificationString="Pomodoro number $1"
  notificationTitle="Pomodoro Started"
  notificationString="display notification \"${notificationString}\" with title \"${notificationTitle}\" sound name \"Tink\""
  echo $notificationString
  osascript -e "${notificationString}"
}

function displayPauseSessionNotification {
  notificationString="Pause number $1"
  notificationTitle="Pause Started"
  notificationString="display notification \"${notificationString}\" with title \"${notificationTitle}\" sound name \"Tink\""
  echo $notificationString
  osascript -e "${notificationString}"
}
