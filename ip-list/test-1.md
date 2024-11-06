# IP-list

| id | node | interface | IPv4 | switch-port |
|---|---|---|---|---|
|1| 1.0 | veth10nb | 192.168.123.1/24 | veth10sb |
|2| 2.2 | veth20nb | 192.168.123.2/24 | veth20sb |

## id:1
### create
```bash
VETH_NAME="veth10"; \
ADDR="192.168.123.1/24"; \
BR_NAME="br-int"; \
ip link add ${VETH_NAME}nb type veth peer ${VETH_NAME}sb ;\
microovn.ovs-vsctl add-port $BR_NAME ${VETH_NAME}sb
ip link set ${VETH_NAME}nb up;\
ip link set ${VETH_NAME}sb up;\
ip a a ${ADDR} dev ${VETH_NAME}nb;\
```

### delete
```bash
VETH_NAME="veth10"; \
microovn.ovs-vsctl del-port ${VETH_NAME}sb
ip link set ${VETH_NAME}nb down;\
ip link set ${VETH_NAME}sb down;\
ip link del ${VETH_NAME}sb;
```

## id:2
### create
```bash
VETH_NAME="veth20"; \
ADDR="192.168.123.2/24"; \
BR_NAME="br-int"; \
NS_NAME="ns1"; \
ip link add ${VETH_NAME}nb type veth peer ${VETH_NAME}sb ;\
ip link set ${VETH_NAME}sb up;\
microovn.ovs-vsctl add-port $BR_NAME ${VETH_NAME}sb;\
ip netns add ${NS_NAME};\
ip netns exec ${NS_NAME} ip link set lo up;\
ip link set ${VETH_NAME}nb netns ${NS_NAME};\
ip netns exec ${NS_NAME} ip link set ${VETH_NAME}nb up;\
ip netns exec ${NS_NAME} ip a a ${ADDR} dev ${VETH_NAME}nb
```

### delete
```bash
VETH_NAME="veth20"; \
microovn.ovs-vsctl del-port ${VETH_NAME}sb
ip link set ${VETH_NAME}nb down;\
ip link set ${VETH_NAME}sb down;\
ip link del ${VETH_NAME}sb;
```
