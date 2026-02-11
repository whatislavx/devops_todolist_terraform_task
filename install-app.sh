#!/bin/bash

apt-get update -yq
apt-get install python3-pip -yq

mkdir /app

git clone https://github.com/<your-gh-username>/azure_task_12_deploy_app_with_vm_extention.git todolist
cp -r ./todolist/app/* /app

mv /app/todoapp.service /etc/systemd/system/
systemctl daemon-reload
systemctl start todoapp
systemctl enable todoapp
