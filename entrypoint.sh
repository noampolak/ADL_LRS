#!/bin/sh

pip install -r /code/ADL_LRS/requirements.txt
cd /code/ADL_LRS; fab setup_lrs
# service nginx restart

# cd /code/ADL_LRS && gunicorn --bind 0.0.0.0:8080  --workers=9 adl_lrs.wsgi:application --log-level=debug -c /code/ADL_LRS/docker-gunicorn.conf.py
case $1 in
pause)
    sleep 24h
    ;;
manage)
    shift
    echo "Running python manage.py $@ .."
    cd /code/ADL_LRS && python manage.py "$@"
    ;;
gunicorn)
	 cd /code/ADL_LRS && gunicorn --bind 0.0.0.0:8080  --workers=9 adl_lrs.wsgi:application --log-level=debug -c /code/ADL_LRS/docker-gunicorn.conf.py
	;;
*)
    echo "Running exec $@ .."
    exit $?
    ;;
esac
