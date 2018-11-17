# lxc-zerotier
## ZeroTier configs needed for LXC containers

Basically, the configuration requires a tun device, which is not created as part of a normal container installation.  Copy the file named tun into your /etc/init.d/ directory, chmod 755, and then run 'update-rc.d tun defaults' to add it to the normal boot order.  Restart networking service to immediately reap the benefits.

Or just chmod +x setup.sh and execute it with sh ./setup.sh and it'll do it for you.

That's it.
