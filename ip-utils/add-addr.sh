#!/bin/bash

VETH_NAME="veth10"; \
ADDR="192.168.123.1/24"; \
ip a a ${ADDR} dev ${VETH_NAME};

# memo
# node-1
VETH_NAME="veth10nb"; \
ADDR="192.168.123.1/24"; \
ip a a ${ADDR} dev ${VETH_NAME};

# node-2
VETH_NAME="veth10nb"; \
ADDR="192.168.123.2/24"; \
ip a a ${ADDR} dev ${VETH_NAME};