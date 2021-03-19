#!/bin/bash

# HowTo: run Makefile to init chains
# Run this executable to initialise the datadir from the genesis files.

ORIGIN=ethereum
CHAINS=(1414)

for chain in ${CHAINS[*]}
do
    echo 'Initialising' ${HOST_DATA_DIR}/${ORIGIN}/${chain}
    mkdir -p ${HOST_DATA_DIR}/${ORIGIN}/${chain}
    echo ${HOST_DATA_DIR}/${ORIGIN}/${chain}:/chain_data
    cd $(pwd)/chains/${ORIGIN}/${chain}/ \
      && cp genesis.json bootnodes ${HOST_DATA_DIR}/${ORIGIN}/${chain}/
    docker run -v ${HOST_DATA_DIR}/${ORIGIN}/${chain}/:/chain_data \
        ethereum/client-go:v1.9.25 \
        --datadir /chain_data \
        init \
        /chain_data/genesis.json
done
