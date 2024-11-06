#!/bin/bash

VETH_NAME="veth10"; \
ip link del ${VETH_NAME}nb;\
ip a s ${VETH_NAME}nb 2> /dev/null || ip a s ${VETH_NAME}sb 2> /dev/null || echo success;