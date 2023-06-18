#!/bin/bash

echo "scheduler scale down trigger by cronjob"


up=$(uptime)
echo "Server uptime is $up"

for file in $(find . -name values.yaml)
do
  yq e -i '.replicaCount=0' $file
done

echo "Changes values to 0 has successfully"