#!/bin/bash

source notification_utils.sh
source hostname_utils.sh

let "WORK_TIME_SECONDS=$1 * 60"

let "PAUSE_TIME_SECONDS=$2 * 60"

create_blocked_hostnames

for i in `seq $3`
do
  swap_hostnames && displayWorkSessionNotification $i && sleep $WORK_TIME_SECONDS
  swap_hostnames && displayPauseSessionNotification $i && sleep $PAUSE_TIME_SECONDS
done

remove_blocked_hostnames
