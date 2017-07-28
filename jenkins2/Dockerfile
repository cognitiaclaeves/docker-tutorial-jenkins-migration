
# Adapted from http://shashikantjagtap.net/get-started-with-brand-new-jenkins-2-0-with-docker/

FROM jenkins
USER root
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins
USER jenkins
# ENV JAVA_OPTS="-Xmx8192m -Dhttp.proxyHost= -Dhttp.proxyPortNumber=80 -Dhudson.diyChunking=false -Dorg.apache.commons.jelly.tags.fmt.timeZone=America/Chicago -Duser.timezone=America/Chicago"
ENV JAVA_OPTS="-Xmx8192m -Dhudson.diyChunking=false -Dorg.apache.commons.jelly.tags.fmt.timeZone=America/Chicago -Duser.timezone=America/Chicago"
