FROM fedora:latest

MAINTAINER Sven Anderson <sven@redhat.com>

VOLUME /src

RUN dnf install -y \
  findutils \
  sudo \
  procps-ng \
  openssl \
  redhat-rpm-config \
  python-pip \
  gcc \
  git \
  python-devel \
  python3-devel \
  libxml2-devel \
  libxslt-devel \
  libffi-devel \
  openssl-devel \
  postgresql-devel \
  mariadb-devel \
  libvirt-devel \
  gettext \
  && dnf clean all

RUN pip install -U \
  pip \
  wheel \
  setuptools \
  tox \
  virtualenv \
  nose2 \
  && rm -r /root/.cache/pip

ADD start.sh /start.sh

RUN echo 'docker ALL=NOPASSWD: ALL' > /etc/sudoers.d/docker-nopasswd

WORKDIR /src

ENTRYPOINT ["/bin/bash", "/start.sh"]
