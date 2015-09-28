# nuxeo-docker

## Prerequisites
1. A Linux with Docker installed
2. The Linux supports upstart

## First-time build

```
git clone https://github.com/BCDevExchange/nuxeo-docker.git
cd nuxeo-docker
. host.sh
```

If everything goes well 

1. a docker image `bcdevexchange/nuxeo` will be built locally 
2. a container `bcdevexchange-nuxeo` will be lanuched 
3. a deamon `docker-containers` will be created to keep `bcdevexchange-nuxeo` running across server reboots

## Operation
To shutdown, `stop docker-containers`
