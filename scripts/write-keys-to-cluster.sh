#!/bin/bash

for i in {1..100}; do
    ../bin/etcdctl --endpoints=http://localhost:2379 put "key-$i" "value-$i"
done