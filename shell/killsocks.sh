# kill PID from socks port 9050
kill $(lsof -i :9050|awk '{print $2}'|tail -2)
