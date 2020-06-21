#!/bin/bash
PUBLICIP=$(curl -s ifconfig.me) && sudo sqlite3 "/usr/local/openvpn_as/etc/db/config_local.db" "update config set value='$PUBLICIP' where name='host.name';" && sudo systemctl restart openvpnas
