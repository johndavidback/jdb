#!/usr/bin/env bash
pidof uwsgi  >/dev/null
if [[ $? -ne 0 ]]; then
  killall uwsgi
fi
