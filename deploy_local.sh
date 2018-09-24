#!/bin/bash
export NGINX_HOST=YOUR-LOCAL-IP
export NGINX_PORT=80
export APP_HOST=YOUR=LOCAL-IP
export APP_PORT=8000
docker-compose build
docker-compose compose up -d #cmd to stop: docker-compose down
docker run -it    -e DOCKPGHOST=YOUR-LOCAL-IP   -e DOCKPGPORT=54320    -e DOCKPGDB=soylatte    -e DOCKPGUSER=postgres -e SECRET_KEY=hogehoge -e NEVERCACHE_KEY=hogehoge -e DOCKPGPASSWD=Test1Pass -e DEBUG=True  soylatte_app:test /usr/bin/python3 /project/soylatte/manage.py migrate
