# set hostname
cat makomi_hosts > /etc/hosts
cat makomi_hostname > /etc/hostname
# install bonjour
apt-get install avahi-daemon -y
# reboot to get new kernel
shutdown -r +1