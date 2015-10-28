# nuxeo-docker
This docker project builds an all-in-one version 7.4-01 of nuxeo over debian jessie image. It is not scalable therefore only suitable for development or small scale production.

## Prerequisites
1. A Linux with following software installed
  * Docker@^1.8.2
  * Git client
2. The Linux uses upstart init
3. Port 80 is available

## First-time build

```
git clone https://github.com/BCDevExchange/nuxeo-docker.git
cd nuxeo-docker
chmod a+x host.sh
. host.sh
```

If everything goes well 

1. a docker image `bcdevexchange/nuxeo` will be built locally 
2. a container `bcdevexchange-nuxeo` will be lanuched and run nuxeo
3. a deamon `docker-containers` will be created to keep `bcdevexchange-nuxeo` running across server reboots

## Operation
To shutdown, `stop docker-containers`
