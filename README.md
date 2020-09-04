# pomodoro
Bash script to act as a pomodoro timer.

### Usage
You'll need to run `chmod +x pomodoro.sh` to make it an executable. To run the timer, `./pomodoro.sh 25 5 4` will block the websites in the deny list for 25 minutes, then unblock them for 5 minutes, and repeat, 4 times in total. Might need to run with `sudo` due to it swapping _/etc/hosts_. 
