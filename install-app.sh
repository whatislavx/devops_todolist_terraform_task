#!/bin/bash

apt-get update -yq
apt-get install -yq python3 python3-venv python3-pip git

mkdir -p /app
python3 -m venv /app/venv

git clone https://github.com/whatislavx/devops_todolist_terraform_task.git /tmp/todolist
cp -r /tmp/todolist/app/* /app

cd /app

chmod +x start.sh

mv todoapp.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable todoapp
systemctl start todoapp
