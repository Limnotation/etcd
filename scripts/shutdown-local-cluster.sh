#!/bin/bash

# Find all running etcd processes
ETCDPRO=$(pgrep -x etcd)

# Check if there are any running etcd processes
if [ -z "$ETCDPRO" ]; then 
    echo "No etcd processes running"
    exit 0
fi 

# Kill all running etcd processes
for pid in $ETCDPRO; do
    echo "Killing etcd processes: $pid"
    kill -9 $pid
done

# Wait for termination 
sleep 2

# Double check for running etcd processes
ETCDPRO=$(pgrep -x etcd)

# Check if there are any running etcd processes
if [ -n "$ETCDPRO" ]; then 
    echo "Failed to kill etcd processes: $ETCDPRO"
    exit 1
fi 

echo "Successfully killed etcd processes"
exit 0