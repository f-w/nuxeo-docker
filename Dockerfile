FROM      debian:jessie
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y software-properties-common
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get update && apt-get install -y oracle-java8-installer \
	imagemagick \
	ufraw \
	poppler-utils \
	libreoffice \
	libav-tools \
	libwpd-tools \
	ghostscript \
	libimage-exiftool-perl
RUN wget -q -O- http://apt.nuxeo.org/nuxeo.key | apt-key add - OK
RUN add-apt-repository "deb http://apt.nuxeo.org/ $(lsb_release -cs) releases"
RUN add-apt-repository "deb http://apt.nuxeo.org/ $(lsb_release -cs) fasttracks"
RUN echo nuxeo   nuxeo/bind-address      string  0.0.0.0 | /usr/bin/debconf-set-selections
RUN echo nuxeo   nuxeo/http-port string  8080 | /usr/bin/debconf-set-selections
RUN echo nuxeo   nuxeo/database  select  Autoconfigure PostgreSQL | /usr/bin/debconf-set-selections
RUN apt-get update && apt-get install -y nuxeo
COPY nuxeo-start.sh /root/
RUN chmod 0777 /root/nuxeo-start.sh
CMD ["/root/nuxeo-start.sh"]