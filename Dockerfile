FROM jenkins/jenkins:alpine

USER root

RUN apk -U add docker
RUN apk update && apk upgrade
RUN apk add sudo
RUN echo "root:password" | chpasswd
# Setup Jenkins
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN apk add --update shadow \
    && groupadd -g 50 staff \
    && usermod -a -G staff jenkins
USER jenkins

RUN jenkins-plugin-cli --plugins \
blueocean \
build-environment \
cloudbees-folder \
config-file-provider \
credentials-binding \
credentials \
docker-plugin \
docker-slaves \
envinject \
git \
groovy \
http_request \
job-dsl \
jobConfigHistory \
naginator \
pam-auth \
pipeline-utility-steps \
nexus-artifact-uploader \
slack \
workflow-aggregator 

COPY basic-security.groovy /usr/share/jenkins/ref/init.groovy.d/basic-security.groovy
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
USER root