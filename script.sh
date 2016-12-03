#!/bin/bash
echo "$SLAVEKEY" > /etc/smokeping/slavesecrets.conf
/usr/sbin/smokeping --master-url=$URL/cgi-bin/smokeping.cgi --shared-secret=/etc/smokeping/slavesecrets.conf --cache-dir=/var/lib/smokeping/ --nodaemon --slave-name=$SLAVENAME  --logfile=/var/log/syslog
