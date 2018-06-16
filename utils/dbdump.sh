#!/bin/bash
##backup
#docker exec [container_id or name] pg_dumpall -U postgres > dump.sql
##restore
#cat dump.sql | docker exec -i [container_id or name] psql -U postgres
##Partial Restore
#cat your_dump.sql | docker exec -i {docker-postgres-container} psql -U {user} -d {database_name}
