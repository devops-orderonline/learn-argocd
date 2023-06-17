#!/bin/bash

up=$(uptime)
echo "Server uptime is $up"

git config --global user.name 'devops orderonline'
git config --global user.email 'devops@orderonline.id'

for file in $(find . -name values.yaml)
do
  yq e -i '.replicaCount=0' $file
  git add $file
done

git commit -m "Scheduler Scale Down"
git push

echo "Git push has successfully"