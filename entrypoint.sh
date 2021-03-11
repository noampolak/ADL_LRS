#!/bin/sh

pip install -r /code/ADL_LRS/requirements.txt

# service nginx restart

# cd /code/ADL_LRS && gunicorn --bind 0.0.0.0:8080  --workers=9 adl_lrs.wsgi:application --log-level=debug -c /code/ADL_LRS/docker-gunicorn.conf.py
case $1 in
pause)
    sleep 24h
    ;;
statics)
    shift
    echo "Rsync statics From:  /code/skillzdjango/skillz/statics To: /statics.."
    rsync -avz --update --delete /code/skillzdjango/skillz/statics /
   ;;
manage)
    shift
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
