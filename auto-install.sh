#!/bin/sh

$RHOME = "/root"
$TEMP = "/tmp/gmm"

[ -e $TEMP ] && die "$TEMP already exists."  

mkdir -p $TEMP

git clone https://github.com/ChinHui-Chen/ganglia_metric_modules.git "$TEMP" --branch master
cd "$TEMP"

sudo cp modules/* /root
sudo cp cron.d/cron_ganglia /etc/cron.d/
sudo service cron restart

echo "gmm is installed."


