#!/usr/bin/env bash
set -ex

apt-get update
apt-get install -y python-pip python-dev nginx uwsgi uwsgi-plugin-python
pip install Flask

mkdir -p /opt/apps/jdb
mkdir -p /etc/uwsgi/sites

if [ -f /etc/nginx/sites-enabled/default ]; then
  rm /etc/nginx/sites-enabled/default
fi
