#!/usr/bin/env bash

sudo snap install --classic node 

cat vscode-extensions.txt | while read extension || [[ -n $extension ]];
do
  code --install-extension $extension --force
done
