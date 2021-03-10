FROM python:2.7.18

RUN apt-get update; apt-get install -y git nginx 

RUN pip install 'fabric<2.0'

RUN mkdir /code; cd /code; git clone  https://github.com/noampolak/ADL_LRS.git

RUN /bin/bash -c "cd /code/ADL_LRS; fab setup_env"


# COPY libpop.deb rsync.deb nginx-common.deb nginx-full.deb init-system-helpers.deb /workspace/

# RUN dpkg -i /workspace/*.deb

# COPY start.sh /workspace/start.sh
# COPY nginx.conf /etc/nginx/sites-enabled/default

# RUN mkdir -p /etc/uwsgi/vassals; mkdir /workspace/ADL_LRS/logs
# COPY lrs_uwsgi.ini /etc/uwsgi/vassals/lrs_uwsgi.ini

RUN cp /code/ADL_LRS/entrypoint.sh / && chmod +x entrypoint.sh
EXPOSE 8080
CMD ["/entrypoint.sh"]
