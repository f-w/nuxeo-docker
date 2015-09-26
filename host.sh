#!/bin/sh
docker build -t bcdevexchange/nuxeo .
# auto start container, assuming host uses upstart
cp docker-containers.conf /etc/init
docker run -d --name=bcdevexchange-nuxeo -p 80:8080 bcdevexchange/nuxeo
