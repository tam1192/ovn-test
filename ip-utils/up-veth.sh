#!/bin/bash

VETH_NAME="veth10"; \
ip link set ${VETH_NAME}nb up;\
ip link set ${VETH_NAME}sb up;