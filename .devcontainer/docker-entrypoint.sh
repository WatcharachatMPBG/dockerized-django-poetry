#run these commands on first launch

python manage.py makemigrations --noinput
python manage.py migrate --noinput
python manage.py showmigrations
python manage.py check
python manage.py createsuperuser --noinput