#!/bin/bash

mv /app/vpnserver.sh /opt/vpnserver.sh && chmod 755 /opt/vpnserver.sh
mv /app/vpnserver /usr/local/
chmod 600 /usr/local/vpnserver/
chmod 700 /usr/local/vpnserver/vpncmd
chmod 700 /usr/local/vpnserver/vpnserver
