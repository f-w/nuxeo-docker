#!/bin/sh
service postgresql start
export NUXEO_CONF="/etc/nuxeo/nuxeo.conf"
/var/lib/nuxeo/server/bin/nuxeoctl console
