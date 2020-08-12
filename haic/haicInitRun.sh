#!/bin/sh

#clear node
./clear.sh

#add static node
./haic init --datadir data

#init node
wget https://www.haichain.io/nodes/haic/static-nodes.json -P data/haic



