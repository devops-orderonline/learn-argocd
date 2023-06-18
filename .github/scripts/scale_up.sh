#!/bin/bash

echo "scheduler scale up trigger by cronjob"


up=$(uptime)
echo "Server uptime is $up"

for file in $(find . -name values.yaml)
do
  yq e -i '.replicaCount=1' $file
done

echo "Changes values to 1 has successfully"