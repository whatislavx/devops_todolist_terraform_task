#!/bin/bash

source /app/venv/bin/activate

pip install --upgrade pip
pip install -r /app/requirements.txt
python /app/manage.py migrate

python /app/manage.py runserver 0.0.0.0:8080
