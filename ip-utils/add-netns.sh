#!/bin/bash

NS_NAME="ns1"; \
ip netns add ${NS_NAME};\
ip netns ${NS_NAME} ip link set lo up

# memo
# ns1
NS_NAME="ns1"; \
ip netns add ${NS_NAME};\
ip netns ${NS_NAME} ip link set lo up
