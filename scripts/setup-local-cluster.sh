#!/bin/bash

# Start node1 
./bin/etcd --config-file ../configs/node1.yml &
sleep 2

# Start node2
./bin/etcd --config-file ../configs/node2.yml &
sleep 2