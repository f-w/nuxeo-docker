#!/bin/sh
docker build -t bcdevexchange/nuxeo .
docker run -d -p 80:8080 bcdevexchange/nuxeo