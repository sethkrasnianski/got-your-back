#!/bin/bash
source mysql.config

for path in databases/*
do
  if [ -f $path ];
  then
    version=${path//[!0-9]}
    echo $version
    #echo $((version+1))
  else
    echo "nope"
  fi
done

#mysql -u $user -p$pass $db << EOF
#use mysql;
#show tables;
#EOF
