# build_files.sh
#!/bin/bash
echo "Python version:"
python --version
echo "Pip version:"
pip --version
pip install -r requirements.txt
python manage.py migrate
python manage.py collectstatic --noinput