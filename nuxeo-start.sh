#!/bin/sh
service postgresql start
service exim4 start
export NUXEO_CONF="/etc/nuxeo/nuxeo.conf"
/var/lib/nuxeo/server/bin/nuxeoctl console
