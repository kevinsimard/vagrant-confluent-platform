install:
	./scripts/install-dependencies.sh

start-kafka:
	~/confluent/bin/zookeeper-server-start -daemon ~/confluent/etc/kafka/zookeeper.properties
	~/confluent/bin/kafka-server-start -daemon ~/confluent/etc/kafka/server.properties

start-connect:
	./scripts/setup-kafka-connect.sh
	~/confluent/bin/connect-distributed -daemon /tmp/connect-distributed.properties

start-schema-registry:
	~/confluent/bin/schema-registry-start -daemon ~/confluent/etc/schema-registry/schema-registry.properties

start-control-center:
	./scripts/setup-control-center.sh
	~/confluent/bin/control-center-start /tmp/control-center.properties
