FROM mysql:5.7

COPY ./db-import.sql /docker-entrypoint-initdb.d/dump.sql