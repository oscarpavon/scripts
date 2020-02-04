sudo sysctl net.ipv4.ip_forward=1

sudo iptables -t nat -A POSTROUTING -o enp3s0 -j MASQUERADE
sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -i enp3s0 -o wlp5s0 -j ACCEPT

 sudo iptables -I INPUT -p udp --dport 67 -i enp3s0 -j ACCEPT
sudo iptables -I INPUT -p udp --dport 53 -s 192.168.20.0/24 -j ACCEPT

 sudo iptables -I INPUT -p tcp --dport 53 -s 192.168.20.0/24 -j ACCEPT

