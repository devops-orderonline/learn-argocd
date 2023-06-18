#!/bin/bash

echo "scheduler trigger by dispatch"

up=$(uptime)
echo "Server uptime is $up"

for file in $(find . -name values.yaml)
do
  yq e -i '.replicaCount='$COUNT $file
done

echo "Changes values to $COUNT has successfully"