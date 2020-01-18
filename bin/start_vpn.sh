sudo netExtender -m -u brian.swango -d "Admin.FullSpectrum" --auto-reconnect --dns-prefer-remote vpn.fullspectrum.net
echo "Adding routes"
sudo ip route add 10.130.103.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 10.130.102.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 10.130.101.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 10.0.0.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 10.0.1.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 10.0.2.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 10.0.3.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 10.0.4.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 192.168.60.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 192.168.70.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 192.168.71.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 192.168.72.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 192.168.73.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 10.10.71.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 208.130.103.0/24 via 192.0.2.1 dev ppp0
sudo ip route add 172.31.0.0/16 via 192.0.2.1 dev ppp0
sudo ip route add 172.32.0.0/16 via 192.0.2.1 dev ppp0

