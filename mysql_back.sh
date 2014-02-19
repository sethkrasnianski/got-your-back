#!/bin/bash
source mysql.config

latest=1

for path in databases/*
do
  if [ -f $path ];
  then
    version=${path//[!0-9]}
    
    if (( version > latest ))
    then
      latest=$version
    fi
    
    echo $latest

    #echo $version
    #echo $((version+1))
  else
    echo "nope"
  fi
done

#mysql -u $user -p$pass $db << EOF
#use mysql;
#show tables;
#EOF
