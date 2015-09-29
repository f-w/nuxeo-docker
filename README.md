# nuxeo-docker
This docker project builds an all-in-one latest version of nuxeo over debian jessie image. It is not scalable therefore only suitable for development or small scale production.

## Prerequisites
1. A Linux with Docker@^1.8.2 installed
2. The Linux supports upstart
3. Port 80 is available
4. SMTP is installed (`sudo apt-get install mailutils`)

## First-time build

```
git clone https://github.com/BCDevExchange/nuxeo-docker.git
cd nuxeo-docker
chmod a+x host.sh
. host.sh
```

If everything goes well 

1. a docker image `bcdevexchange/nuxeo` will be built locally 
2. a container `bcdevexchange-nuxeo` will be lanuched 
3. a deamon `docker-containers` will be created to keep `bcdevexchange-nuxeo` running across server reboots

## Operation
To shutdown, `stop docker-containers`
