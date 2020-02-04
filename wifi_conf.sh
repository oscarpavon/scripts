sudo ip link set wlp3s0 up 
sudo wpa_supplicant -B -i wlp3s0 -c ~/wifi_enc.conf
#sudo ip addr add 192.168.0.5/24 dev wlp3s0
#sudo ip route add default via 192.168.0.1 src 192.168.0.5 dev wlp3s0
