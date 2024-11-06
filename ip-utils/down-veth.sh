#!/bin/bash

VETH_NAME="veth10"; \
ip link set ${VETH_NAME}nb down;\
ip link set ${VETH_NAME}sb down;