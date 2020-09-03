function create_blocked_hostnames {
  cp /etc/hosts /etc/hosts.bk
  echo "# Added by pomodoro.sh" >> /etc/hosts.bk
  while read -r line
  do
    echo "127.0.0.1   ${line}" >> /etc/hosts.bk
  done < banned_hostnames.txt
}

function swap_hostnames {
 mv /etc/hosts /etc/hosts.swap && mv /etc/hosts.bk /etc/hosts && mv /etc/hosts.swap /etc/hosts.bk
}

function remove_blocked_hostnames {
  rm /etc/hosts.bk
}
