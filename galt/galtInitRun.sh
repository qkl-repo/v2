#!/bin/sh

#clear node
./clear.sh

#init node
./galt init --datadir data

#add static node
wget https://www.haichain.io/nodes/galt/static-nodes.json -P data/galt



