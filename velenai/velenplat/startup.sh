#!/bin/bash


if [ -z "$VELEN_ROLE" ]; then
    echo >&2 'error: VELEN_ROLE is empty '
    echo >&2 '  You need to specify VELEN_ROLE [celery/daemon]? '
    exit 2
fi

#cd /code/featurefactory/
#celery -A featurefactory worker -l debug --pool=prefork &

if [ $VELEN_ROLE == daemon ]; then
    cd /
    /usr/local/bin/uwsgi --ini /uwsgi.ini

fi

if [ $VELEN_ROLE == celery ]; then
   cd /code/velenplat/velenplat
   celery -A velenplat worker -l debug --pool=prefork
fi
