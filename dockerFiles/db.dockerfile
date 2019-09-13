FROM mysql:5.7

COPY ./db-import.sql /docker-entrypoint-initdb.d/dump.sql
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=sac_web_api
ENV MYSQL_USER=sac_web_api_ufjf
ENV MYSQL_PASSWORD=s@cw3b4p1