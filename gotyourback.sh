#!/bin/bash

latest=1
sql="$db"

for path in databases/*
do
  if [ -f $path ];
  then
    version=${path//[!0-9]}
    
    if (( version > latest ))
    then
      latest=$version
    fi
    
    sql="$db$((latest+1)).sql"
  else
    sql="$db$latest.sql"
  fi
done

echo $sql

cd databases;
mysqldump --login-path=local  $db > $sql;
