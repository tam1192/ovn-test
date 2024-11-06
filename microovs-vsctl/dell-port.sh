#!/bin/bash

PORT_NAME="veth10sb"; \
microovn.ovs-vsctl del-port $PORT_NAME

# examples
PORT_NAME="veth10"; \
microovn.ovs-vsctl del-port $PORT_NAME
