#!/bin/bash

#build the project

echo "Building  Project ...."
python3.9 -m pip install -r requirements.txt

echo "Make migrations... "
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

echo "Collect static ..."
python3.9 manage.py collectstatic --noinput --clear
