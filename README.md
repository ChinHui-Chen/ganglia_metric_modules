# ganglia_metric_modules
Useful ganglia metric modules.

Includes
  * nfs metric
  * apache metric
  * mysql metric
  * disk metric

## Auto-Install

for UNIX platforms:

`wget -O - https://raw.github.com/ChinHui-Chen/ganglia_metric_modules/master/auto-install.sh | sh`


## Install

`sudo chmod +x modules/*`
`sudo cp modules/* /root`  
`sudo cp cron.d/cron_ganglia /etc/cron.d/`  
`sudo service cron restart`  
