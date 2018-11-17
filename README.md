# lxc-zerotier
## ZeroTier configs needed for LXC containers

Basically, the configuration requires a tun device, which is not created as part of a normal container installation.  Copy the file named tun into your /etc/init.d/ directory, chmod 755, and then run 'update-rc.d tun defaults' to add it to the normal boot order.  Restart networking service to immediately reap the benefits.

Or just chmod +x setup.sh and execute it with sh ./setup.sh and it'll do it for you.

You may have to restart the zerotier-one service ('service zerotier-one restart', be warned, this may appear to hang for a minute.)

'ip addr | grep "zt"' to see if the interface is up and has an assigned IP in your container.

That's it.
