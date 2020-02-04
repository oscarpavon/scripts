
#!/bin/bash
sudo sysctl net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o wlp3s0 -j MASQUERADE

function port_forward(){

sudo iptables -A FORWARD -i $1 -o $2 -p tcp --syn --dport $5 -m conntrack --ctstate NEW -j ACCEPT

sudo iptables -A FORWARD -i $1 -o $2 -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A FORWARD -i $2 -o $1  -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

sudo iptables -t nat -A PREROUTING -i $1 -p tcp --dport $6 -j DNAT --to-destination $3

sudo iptables -t nat -A POSTROUTING -o $2 -p tcp --dport $5 -d $3 -j SNAT --to-source $4 

}

port_forward wlp3s0 enp4s0 10.0.3.3 192.168.0.16 8888 8888
port_forward wlp3s0 enp4s0 10.0.3.3 192.168.0.16 6666 3632
port_forward wlp3s0 enp6s0 10.0.4.3 192.168.0.16 5555 3632

#sudo ip link set enp4s0 up
#sudo ip addr add 10.0.3.1/24 dev enp4s0

#sudo sysctl net.ipv4.ip_forward=1
#sudo iptables -A FORWARD -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
#sudo iptables -A FORWARD -i wlp3s0 -o enp4s0 -j ACCEPT


#sudo iptables -A FORWARD -i wlp3s0 -o enp4s0 -p tcp --syn --dport 8888 -m conntrack --ctstate NEW -j ACCEPT

#sudo iptables -A FORWARD -i wlp3s0 -o enp4s0 -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
#sudo iptables -A FORWARD -i enp4s0 -o wlp3s0 -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
#
#sudo iptables -t nat -A PREROUTING -i wlp3s0 -p tcp --dport 8888 -j DNAT --to-destination 10.0.3.3

#sudo iptables -t nat -A POSTROUTING -o enp4s0 -p tcp --dport 8888 -d 10.0.3.3 -j SNAT --to-source 192.168.0.16 


