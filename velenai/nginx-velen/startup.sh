#!/bin/bash

if [ -z "$VELEN_DAEMON_ADDRESS" ]; then
    echo >&2 'error: VELEN_DAEMON_ADDRESS is empty '
    echo >&2 '  You need to specify VELEN_DAEMON_ADDRESS'
    exit 2
fi

if [ -z "$VELEN_DAEMON_PORT" ]; then
    echo >&2 'error: VELEN_DAEMON_PORT is empty '
    echo >&2 '  You need to specify VELEN_DAEMON_PORT'
    exit 2
fi

sed -i "s/192.168.1.5/${VELEN_DAEMON_ADDRESS}/g"   /opt/velen_ui/static/js/app.*.js

sed -i "s/8000\/api/${VELEN_DAEMON_PORT}\/api/g"  /opt/velen_ui/static/js/app.*.js

nginx -g "daemon off;"
