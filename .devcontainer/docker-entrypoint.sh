#!/bin/sh
set -e

# if [ "$DJANGO_MANAGEPY_MIGRATE" = 'xon' ]; then
#   python manage.py migrate --noinput
#   #python manage.py loaddata fixtures/*.json
#   #python manage.py collectstatic --noinput
# fi

# if [ -n "$GOOGLE_APPLICATION_CREDENTIALS" ]; then
#   gcloud auth activate-service-account --key-file="$GOOGLE_APPLICATION_CREDENTIALS"
# fi

python manage.py makemigrations --noinput
python manage.py migrate --noinput
python manage.py showmigrations
python manage.py check
python manage.py createsuperuser --noinput


exec "$@"
