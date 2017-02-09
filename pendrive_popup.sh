#!/bin/bash
pid=$(pgrep cinnamon-sessio)
user=$(w -hs | awk '$3==":0" {print $1}')
if [ ! -v DBUS_SESSION_BUS_ADDRESS ]; then
  eval "export $(\grep -z DBUS_SESSION_BUS_ADDRESS /proc/$pid/environ)"
fi
/bin/su $user -c "/usr/bin/notify-send --expire-time=20000 \"$(/usr/games/fortune)\""
