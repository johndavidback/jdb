#!/usr/bin/env bash
set -ex

apt-get update
apt-get install python-pip python-dev nginx
pip install uwsgi Flask

mkdir -p /opt/apps/jdb

rm /etc/nginx/sites-enabled/default
