#!/bin/bash

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
