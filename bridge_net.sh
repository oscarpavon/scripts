sudo ip link set enp3s0 up



#create a bridge
#sudo ip link add name wifi_to_cable type bridge
#sudo iw dev wlp5s0 set 4addr on
#sudo ip link set wifi_to_cable up
#sudo ip link set enp3s0 master wifi_to_cable
#sudo ip link set wlp5s0 master wifi_to_cable
sudo ip addr add 10.0.3.1/24 dev enp3s0


sysctl net.ipv4.ip_forward=1
iptables -t nat -A POSTROUTING -o wlp5s0 -j MASQUERADE
iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i wlp5s0 -o enp3s0 -j ACCEPT
