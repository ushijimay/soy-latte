#!/bin/bash
docker run --name soylatte -e POSTGRES_PASSWORD=Inet!2011 -e POSTGRES_DB="soylatte" -e POSTGRES_USER=postgres -e POSTGRES_INITDB_ARGS="--encoding=UTF-8 --locale=C" -d -p 54320:5432 postgres:9.6
