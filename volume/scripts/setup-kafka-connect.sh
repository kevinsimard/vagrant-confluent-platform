#!/bin/bash

# copy the default config file
cp ~/confluent/etc/kafka/connect-distributed.properties \
    /tmp/connect-distributed.properties

# add support for the interceptors
echo "" >> /tmp/connect-distributed.properties
cat <<EOF >> /tmp/connect-distributed.properties
consumer.interceptor.classes=io.confluent.monitoring.clients.interceptor.MonitoringConsumerInterceptor
producer.interceptor.classes=io.confluent.monitoring.clients.interceptor.MonitoringProducerInterceptor
EOF
