#!/bin/sh

nohup ./galt --rpc --rpcapi db,eth,net,web3,personal \
--cache=2048 --port 25000 --rpcport 8025 --rpcaddr "0.0.0.0" --rpccorsdomain "*" \
--allow-insecure-unlock --networkid 55663  --gcmode archive >output 2>&1  &
