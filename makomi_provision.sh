# set hostname
echo 'makomi-host' > /etc/hostname
cat >/etc/hosts <<EOL
127.0.0.1	localhost
127.0.1.1	makomi-host

# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
EOL
# install bonjour
apt-get install avahi-daemon -y
# reboot to get new kernel
shutdown -r +1