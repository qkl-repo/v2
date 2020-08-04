#!/bin/sh

#clear node
./clear.sh

#add static node
wget https://www.haichain.io/nodes/haic/static-nodes.json -P ~/.Haic2.0.0/

#init node
./haic init 


