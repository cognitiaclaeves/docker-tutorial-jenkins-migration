FROM jenkins:1.651.3

MAINTAINER J. Norment

# ENV JAVA_OPTS="-Dhttp.proxyHost= -Dhttp.proxyPortNumber= -Dhudson.diyChunking=false"

# ENV http_proxy http://
# ENV https_proxy http://

USER root

# Warning: With Debian's redirection mirrors, this seems to be hit or miss
#          behind a firewall.
# Can use docker build -no-cache to force command to run, and then docker build again
#    to cache the desired result
RUN apt-get update && apt-get -y --force-yes install \
    python-setuptools \
    ; apt-get clean; rm -rf /var/lib/apt/lists/*

RUN easy_install pip && pip install jenkinsapi

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

EXPOSE 22

USER jenkins

# Overriding JAVA_OPTS to include CT timezone
ENV JAVA_OPTS="-Dhudson.diyChunking=false -Dorg.apache.commons.jelly.tags.fmt.timeZone=America/Chicago -Duser.timezone=America/Chicago"

