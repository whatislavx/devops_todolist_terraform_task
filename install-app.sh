#!/bin/bash

apt-get update -yq
apt-get install -yq python3 python3-venv python3-pip git

mkdir -p /app

git clone https://github.com/whatislavx/devops_todolist_terraform_task.git /tmp/todolist

cp -r /tmp/todolist/app/* /app

python3 -m venv /app/venv
source /app/venv/bin/activate

pip install --upgrade pip
pip install -r /app/requirements.txt

mv /app/todoapp.service /etc/systemd/system/

systemctl daemon-reload
systemctl enable todoapp
systemctl start todoapp
