#!/bin/sh

TEMP=/tmp/gmm

rm -rf "$TEMP"
mkdir -p "$TEMP"

git clone https://github.com/ChinHui-Chen/ganglia_metric_modules.git "$TEMP" --branch master
cd "$TEMP"

sudo cp modules/* /root
sudo cp cron.d/cron_ganglia /etc/cron.d/
sudo service cron restart

echo "ganglia metric modules are installed."

