function create_blocked_hostnames {
  cp ./hosts ./hosts.bk
  echo "# Added by pomodoro.sh" >> hosts.bk
  while read -r line
  do
    echo "127.0.0.1   ${line}" >> hosts.bk
  done < banned_hostnames.txt
}

function swap_hostnames {
 mv ./hosts ./hosts.swap && mv ./hosts.bk ./hosts && mv ./hosts.swap ./hosts.bk
}

function remove_blocked_hostnames {
  rm ./hosts.bk
}
