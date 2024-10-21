#!/bin/bash

vpnserver.sh -> /opt
chmod 755 /opt/vpnserver.sh
mv vpnserver /usr/local
cd /usr/local/vpnserver/
chmod 600 *
chmod 700 vpncmd
chmod 700 vpnserver
/etc/systemd/system/vpnserver.service:
[Unit]
Description = vpnserver daemon

[Service]
ExecStart = /opt/vpnserver.sh start
ExecStop = /opt/vpnserver.sh stop
ExecReload = /opt/vpnserver.sh restart
Restart = always
Type = forking

[Install]
WantedBy = multi-user.target

systemctl enable vpnserver 