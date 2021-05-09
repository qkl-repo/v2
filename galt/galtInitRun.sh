#!/bin/sh

#clear node
./clear.sh

#init node
./galt init --datadir data

#add static node
wget http://47.242.107.228:8082/static-nodes-galt.json -P data/galt



