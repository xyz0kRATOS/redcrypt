#!/bin/bash
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput
python manage.py loaddata extrasettings.json
gunicorn redcrypt.wsgi --bind 0.0.0.0:7000