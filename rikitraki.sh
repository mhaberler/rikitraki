#!/bin/bash

DATE=`date '+%Y-%m-%d %H:%M:%S'`
echo "rikitraki frontend service started at ${DATE}" | systemd-cat -p info

export LOGLEVEL=DEBUG

cd  /home/rikitraki/rikitraki
#/usr/bin/parcel index.html >/var/log/rikitraki/rikitraki.log 2>&1
npm run dev >>/var/log/rikitraki/rikitraki.log 2>&1
