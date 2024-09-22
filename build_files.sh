# build_files.sh
#!/bin/bash
echo "Building the project..."
python3 -m pip install --upgrade pip
pip3 install -r requirements.txt

if [ -n "$DATABASE_URL" ]; then
    echo "Performing database migrations..."
    python3 manage.py migrate --noinput
else
    echo "No DATABASE_URL found. Skipping migrations."
fi

echo "Collect static..."
python3 manage.py collectstatic --noinput --clear