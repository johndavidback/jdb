
# uwsgi --ini /opt/apps/jdb/uwsgi.ini -s /opt/apps/jdb/jdb.sock --daemonize /var/log/uwsgi/access
/usr/local/bin/uwsgi --emperor /etc/uwsgi/sites --daemonize /tmp/uwsgi.log
