#!/bin/sh

GMETRIC_BIN="/usr/bin/gmetric"
URL="http://localhost/admin/server-status"

LINE=`wget -q -O - $URL | grep "idle workers"| cut -c5-`

BUSY=`echo $LINE | cut -f1 -d" "`
IDLE=`echo $LINE | cut -f6 -d" "`

$GMETRIC_BIN -d 120 -t uint16 -n apache_worker_busy -v $BUSY -u workers
$GMETRIC_BIN -d 120 -t uint16 -n apache_worker_idle -v $IDLE -u workers
