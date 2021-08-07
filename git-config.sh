#!/usr/bin/env bash

read -p "Enter github email: " email
git config --global user.email $email

read -p "Enter github username: " githubuser
git config --global user.name $githubuser

read -s -p "Enter github token for user $githubuser (available at https://github.com/settings/tokens): " githubtoken

echo "Using username $githubuser and email $email"

ssh-keygen -t rsa -b 4096 -C "$email"
ssh-add ~/.ssh/id_rsa
pub=`cat ~/.ssh/id_rsa.pub`

status_code=$(curl -u $githubuser:$githubtoken -X POST -d "{\"title\":\"`hostname`\",\"key\":\"$pub\"}" https://api.github.com/user/keys)

if [[ "$status_code" -ne 200 ]] ; then
  echo "Error adding SSH key"
fi

