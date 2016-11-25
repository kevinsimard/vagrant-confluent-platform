#!/bin/bash

# download Confluent Platform tar
wget http://packages.confluent.io/archive/3.1/confluent-3.1.1-2.11.tar.gz -O \
    ./resources/confluent-3.1.1-2.11.tar.gz

# extract Confluent Platform directory
tar -xzf ./resources/confluent-3.1.1-2.11.tar.gz -C ~
mv ~/confluent-3.1.1/ ~/confluent/
