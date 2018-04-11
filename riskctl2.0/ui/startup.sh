#!/bin/bash

if [ -z "$RULE_ENGINE_ADDRESS" ]; then
    echo >&2 'error: RULE_ENGINE_ADDRESS is empty '
    echo >&2 '  You need to specify RULE_ENGINE_ADDRESS'
    exit 2
fi

if [ -z "$RULE_ENGINE_PORT" ]; then
    echo >&2 'error: RULE_ENGINE_PORT is empty '
    echo >&2 '  You need to specify RULE_ENGINE_PORT'
    exit 2
fi

sed -i "s/http:\/\/[A-Za-z0-9\.:]\{1,\}\/syph-re\/api\//http:\/\/${RULE_ENGINE_ADDRESS}:${RULE_ENGINE_PORT}\/syph-re\/api\//g" /opt/rule_engine_ui/static/js/app.*.js

nginx -g "daemon off;"
