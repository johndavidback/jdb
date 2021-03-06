#!/usr/bin/env bash
set -ex

if [ ! -f /etc/nginx/sites-enabled/jdb ]; then
  sudo ln -s /opt/apps/jdb/nginx.conf /etc/nginx/sites-enabled/jdb
fi

if [ ! -f /etc/uwsgi/sites/jdb.ini ]; then
  sudo ln -s /opt/apps/jdb/uwsgi.ini /etc/uwsgi/sites/jdb.ini
fi

sudo service nginx restart
sudo service uwsgi restart
