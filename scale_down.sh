#!/bin/bash

up=$(uptime)
echo "Server uptime is $up"

for file in $(find . -name values.yaml)
do
  yq e -i '.replicaCount=0' $file
done