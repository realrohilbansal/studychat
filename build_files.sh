# build_files.sh
#!/bin/bash
echo "Building the project..."
python -m pip install --upgrade pip
pip install -r requirements.txt

if [ -n "$DATABASE_URL" ]; then
    echo "Performing database migrations..."
    python manage.py migrate --noinput
else
    echo "No DATABASE_URL found. Skipping migrations."
fi

echo "Collect static..."
python manage.py collectstatic --noinput --clear