#!/bin/sh

pip install -r /code/ADL_LRS/requirements.txt

# service nginx restart

cd code/ADL_LRS && gunicorn --bind 0.0.0.0:8080  --workers=9 skillz.wsgi:application --log-level=debug -c docker-gunicorn.conf.py

