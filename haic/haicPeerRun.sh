#!/bin/sh

nohup ./haic --rpc --rpcapi db,eth,net,web3,personal \
--cache=2048 --port 15000 --rpcport 8022 --rpcaddr "0.0.0.0" --rpccorsdomain "*" \
--networkid 55662  --gcmode archive >output 2>&1
