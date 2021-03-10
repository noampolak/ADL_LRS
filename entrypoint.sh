#!/bin/sh

pip install -r /code/requirements.txt

service nginx restart

cd code/ADL_LRS && gunicorn --bind 0.0.0.0:9000  --workers=9 skillz.wsgi:application --log-level=debug -c docker-gunicorn.conf.py

