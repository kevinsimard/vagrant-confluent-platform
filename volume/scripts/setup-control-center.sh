#!/bin/bash

# copy the default config file
cp ~/confluent/etc/confluent-control-center/control-center.properties \
    /tmp/control-center.properties

# change replications/partitions to 1 for testing purposes
cat <<EOF >> /tmp/control-center.properties
confluent.controlcenter.command.topic.replication=1
confluent.controlcenter.internal.topics.partitions=1
confluent.controlcenter.internal.topics.replication=1
confluent.monitoring.interceptor.topic.partitions=1
confluent.monitoring.interceptor.topic.replication=1
EOF
