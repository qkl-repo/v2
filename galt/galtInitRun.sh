#!/bin/sh

#clear node
./clear.sh

#add static node
wget https://www.haichain.io/nodes/galt/static-nodes.json -P ~/.Galt2.0.0/

#init node
./galt init 


