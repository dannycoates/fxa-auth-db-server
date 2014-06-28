# DOCKER-VERSION 0.9
FROM dannycoates/base

ADD docker/confd /etc/confd
ADD docker/run.sh /etc/service/fxa_auth_db_server/run

ADD . /app
WORKDIR /app

RUN npm install

ENV AUTH_DB_HOST 172.17.42.1

EXPOSE 8000
