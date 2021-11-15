#!/bin/bash
echo "================本地节点=============="
postdata='{ "jsonrpc": "2.0", "method": "eth_blockNumber", "params": [], "id": 1 }'
block1=`curl -s -X POST 'http://127.0.0.1:8022/' -H 'Content-type:application/json' --data "$postdata"`
echo "$block1"|jq .

local_block_height_hex=`echo $block1|jq .result|sed -e 's/"//g'`
local_block_height=`printf %d $local_block_height_hex`

echo "=================三方节点=============="
block2=`curl -s -X POST 'http://47.242.107.228:4000/api/eth_rpc' -H 'Content-type:application/json' --data "$postdata"`
echo "$block2"|jq .

third_block_height_hex=`echo $block2|jq .result|sed -e 's/"//g'`
third_block_height=`printf %d $third_block_height_hex`

height_diff=$(($third_block_height-$local_block_height))
echo "-----------------------------------------------------------------------"
echo  "本地节点高度: $local_block_height 官方节点高度: $third_block_height 当前高度差: $height_diff "
echo ""
echo ""
