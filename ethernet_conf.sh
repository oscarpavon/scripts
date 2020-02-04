sudo ip link set enp3s0 up
sudo ip addr add 192.168.0.3/24 dev enp3s0
sudo ip route add default via 192.168.0.24 src 192.168.0.3 
