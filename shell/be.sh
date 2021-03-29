#!/bin/bash

##################
# check file exist
if [ -f /tmp/helloworld ]; then
  echo "file found"
else
  echo "file not found"
fi

############
# check port
port=1080

if [[ $(lsof -i :$port) ]]; then
  printf "\e[31mport %s is closed" $port
else
  printf "\e[32mport %s is open" $port
fi

echo -e "\e[0m" # color reset


###############
# loop breaking
for ((i=0;i<10;i++)); do

  echo "$i is looping"

  if [[ $i -eq 5 ]]; then
    echo i is five and is loop breaking
    break
  fi

done

############
# loop range
for i in 1 2 3 4 5; do
  echo "counting $i"
done
