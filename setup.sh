#!/bin/sh
# Description: 	setup script to copy tun script into init,
#		and enable and start relevant services.
sudo cp tun /etc/init.d/
sudo chmod 755 /etc/init.d/tun
sudo update-rc.d tun defaults
sudo service networking restart
sudo zerotier-cli info

