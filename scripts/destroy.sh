#!/bin/bash

# Shutdown etcd processes
./shutdown-local-cluster.sh

# Remove etcd data directory
echo "remoing member's data directories"
rm -rf data/node*