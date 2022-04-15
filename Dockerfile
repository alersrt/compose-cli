FROM docker/compose:latest

RUN apk --update --no-cache add curl 

RUN mv /usr/local/bin/docker /usr/bin/docker
RUN mv /usr/local/bin/docker-compose /usr/bin/docker-compose

RUN curl -L https://raw.githubusercontent.com/docker/compose-cli/main/scripts/install/install_linux.sh | sh

COPY Dockerfile /Dockerfile
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/alersrt/compose-cli"
