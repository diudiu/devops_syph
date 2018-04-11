#!/bin/sh
if [ -z "$REDIS_DB_4_RE" ]; then
    REDIS_DB_4_RE=3
fi

if [ -z "$MYSQL_HOST" ]; then
    echo >&2 'MYSQL_HOST is empty, use defautl host'
    MYSQL_HOST='mysql_master'
fi

if [ -z "$MONGODB_HOST" ]; then
    echo >&2 'MONGODB_HOST is empty, use defautl host'
    MONGODB_HOST='mongodb_primary'
fi

if [ -z "$REDIS_HOST" ]; then
    echo >&2 'REDIS_HOST is empty, use defautl host'
    REDIS_HOST='redis_master'
fi

if [ -z "$MYSQL_PORT" ]; then
    echo >&2 'MYSQL_PORT is empty, use defautl port'
    MYSQL_PORT=3306
fi

if [ -z "$MONGODB_PORT" ]; then
    echo >&2 'MONGODB_PORT is empty, use defautl port'
    MONGODB_PORT=27017
fi

if [ -z "$MYSQL_DATABASE" ]; then
    echo >&2 'error: MYSQL_DATABASE is empty '
    echo >&2 '  You need to specify MYSQL_DATABASE'
    exit 2
fi

if [ -z "$MYSQL_USER" ]; then
    echo >&2 'error: MYSQL_USER is empty '
    echo >&2 '  You need to specify MYSQL_USER'
    exit 2
fi

if [ -z "$MYSQL_PASSWORD" ]; then
    echo >&2 'error: MYSQL_PASSWORD is empty '
    echo >&2 '  You need to specify MYSQL_PASSWORD'
    exit 2
fi

if [ -z "$MONGODB_DATABASE" ]; then
    echo >&2 'error: MONGODB_DATABASE is empty '
    echo >&2 '  You need to specify MONGODB_DATABASE'
    exit 2
fi

if [ -z "$MONGODB_USERNAME" ]; then
    echo >&2 'error: MONGODB_USERNAME is empty '
    echo >&2 '  You need to specify MONGODB_USERNAME'
    exit 2
fi

if [ -z "$MONGODB_PASSWORD" ]; then
    echo >&2 'error: MONGODB_PASSWORD is empty '
    echo >&2 '  You need to specify MONGODB_PASSWORD'
    exit 2
fi

if [ -z "$REDIS_PASSWORD" ]; then
    echo >&2 'error: REDIS_PASSWORD is empty '
    echo >&2 '  You need to specify REDIS_PASSWORD'
    exit 2
fi

if [ -z "$REDIS_PORT" ]; then
    REDIS_PORT=6379
fi

# mongo config
sed -i "s/mongodb:\/\/.\{0,\}:feature_storage/mongodb:\/\/${MONGODB_USERNAME}:feature_storage/g"  /code/application.properties
sed -i "s/${MONGODB_USERNAME}:.\{0,\}@/${MONGODB_USERNAME}:${MONGODB_PASSWORD}@/g" /code/application.properties
sed -i "s/${MONGODB_PASSWORD}@mongodb_primary:/${MONGODB_PASSWORD}@${MONGODB_HOST}:/g"  /code/application.properties
sed -i "s/27017\/.\{0,\}/27017\/${MONGODB_DATABASE}/g" /code/application.properties
sed -i "s/@.\{0,\}:27017/@${MONGODB_HOST}:27017/g" /code/application.properties
sed -i "s/@${MONGODB_HOST}:27017/@${MONGODB_HOST}:${MONGODB_PORT}/g" /code/application.properties

# mysql config
sed -i "s/mysql:\/\/.\{1,\}\//mysql:\/\/${MYSQL_HOST}\//g"  /code/application.properties
sed -i "s/${MYSQL_HOST}\/.\{0,\}?auto/${MYSQL_HOST}\/${MYSQL_DATABASE}?auto/g" /code/application.properties
sed -i "s/^spring.datasource.username=.\{0,\}/spring.datasource.username=${MYSQL_USER}/g" /code/application.properties
sed -i "s/^spring.datasource.password=.\{0,\}/spring.datasource.password=${MYSQL_PASSWORD}/g" /code/application.properties
sed -i "s/mysql:\/\/.\{1,\}\//mysql:\/\/${MYSQL_HOST}:${MYSQL_PORT}\//g"  /code/application.properties

# redis config
sed -i "s/queue.host=.\{0,\}/queue.host=${REDIS_HOST}/g" /code/application.properties
sed -i "s/queue.port=.\{0,\}/queue.port=${REDIS_PORT}/g" /code/application.properties
sed -i "s/queue.password=.\{0,\}/queue.password=${REDIS_PASSWORD}/g" /code/application.properties
sed -i "s/queue.auditDatabase=.\{0,\}/queue.auditDatabase=${REDIS_DB_4_RE}/g" /code/application.properties
sed -i "s/queue.pushServiceDatabase=.\{0,\}/queue.pushServiceDatabase=${REDIS_DB_4_RE}/g" /code/application.properties
# 配置celery消息队列
if [ -n "$REDIS_AUDIT_TOPIC_NAME" ]; then
    sed -i "s/redis.messaging.queue.auditTopicName=.\{0,\}/redis.messaging.queue.auditTopicName=${REDIS_AUDIT_TOPIC_NAME}/g" /code/application.properties
fi 
if [ -n "$REDIS_PUSH_SERVICE_TOPIC_NAME" ]; then
    sed -i "s/redis.messaging.queue.pushServiceTopicName=.\{0,\}/redis.messaging.queue.pushServiceTopicName=${REDIS_PUSH_SERVICE_TOPIC_NAME}/g" /code/application.properties
fi
if [ -n "$CLIENT_CODE" ]; then
    sed -i "s/innerservice.ff.clientCode=.\{0,\}/innerservice.ff.clientCode=${CLIENT_CODE}/g" /code/application.properties
fi
java -ea -Xmx2g -Xms2g -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=1904 -jar /code/rule-engine-2.3.0-SNAPSHOT.jar --server.port=1903 /code/application.properties 

