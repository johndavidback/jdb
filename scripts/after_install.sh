#!/usr/bin/env bash
set -ex

if [ ! -f /etc/nginx/sites-enabled/jdb ]; then
  sudo ln -s /opt/apps/jdb/nginx.conf /etc/nginx/sites-enabled/jdb
fi
# sudo ln -s /opt/apps/jdb/uwsgi.ini /etc/uwsgi/apps-enabled/jdb.ini

sudo service nginx restart
# sudo service uwsgi restart
