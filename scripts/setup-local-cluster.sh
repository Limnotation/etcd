#!/bin/bash

# DO CHECK YOUR CONFIG FILES BEFORE RUNNING THIS SCRIPT
# We are using relative paths here, so make sure you are in the scripts directory.

# Start node1 
../bin/etcd --config-file ../configs/node1.yml &
sleep 2
echo "Node1 started"

# Start node2
../bin/etcd --config-file ../configs/node2.yml &
sleep 2
echo "Node2 started"