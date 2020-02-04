sudo wpa_supplicant -B -i wlp3s0 -c ~/wifi_down.conf
sudo ip addr add 192.168.1.16/24 dev wlp3s0
sudo ip route add default via 192.168.1.1 src 192.168.1.16 dev wlp3s0
