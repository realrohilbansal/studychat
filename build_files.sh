#!/bin/bash
echo "Building the project..."
python -m pip install --upgrade pip
pip install -r requirements.txt

echo "Setting Python path..."
export PYTHONPATH="/var/task:/var/task/studychat:$PYTHONPATH"

echo "Collecting static files..."
python manage.py collectstatic --noinput --clear

echo "Running migrations..."
python manage.py migrate --noinput