#!/bin/bash

mv /usr/local/bin/jsonpath.py /usr/local/bin/jsonpath2.py
if [ -z "$FEATUREFACTORY_ROLE" ]; then
    echo >&2 'error: FEATUREFACTORY_ROLE is empty '
    echo >&2 '  You need to specify FEATUREFACTORY_ROLE [celery/daemon]? '
    exit 2
fi



if [ $FEATUREFACTORY_ROLE == daemon ]; then
    cd /
    /usr/local/bin/uwsgi --ini /uwsgi.ini

fi

if [ $FEATUREFACTORY_ROLE == celery ]; then
   cd /code/featurefactory/
   celery -A featurefactory worker -l debug --pool=prefork
fi




#cd /code/featurefactory/
#celery -A featurefactory worker -l debug --pool=prefork &

#cd /
#python /code/featurefactory/dataocean_flask/dataocean_flask.py &

#/usr/local/bin/uwsgi --ini /uwsgi.ini
