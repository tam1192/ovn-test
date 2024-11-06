#!/bin/bash

PORT_NAME="veth10sb"; \
BR_NAME="br-int"; \
microovn.ovs-vsctl add-port $BR_NAME $PORT_NAME
