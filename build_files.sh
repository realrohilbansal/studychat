# build_files.sh
#!/bin/bash
echo "Building the project..."
python3 -m pip install --upgrade pip
pip3 install -r requirements.txt

echo "Make migrations..."
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

echo "Collect static..."
python3 manage.py collectstatic --noinput --clear