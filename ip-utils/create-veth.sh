#!/bin/bash

VETH_NAME="veth10"; \
ip link add ${VETH_NAME}nb type veth peer ${VETH_NAME}sb ;\
ip a s ${VETH_NAME}nb && ip a s ${VETH_NAME}sb && echo success;
