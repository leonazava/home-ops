To output the similar network configuration information on a Mac system, you can use various command-line utilities. However, there isn't a single command that can provide all the details as it would appear in Linux's `interfaces` file, but here's how you can gather most of the information:

1. **Network interfaces and their status (up/down)**: `ifconfig`.

2. **IP address and netmask associated with each interface**: `ifconfig`.

3. **Default Gateway**: `netstat -nr | grep default`.

4. **DNS Servers**: `cat /etc/resolv.conf`.

5. **Manual/Automatic (DHCP) configuration**: This information is usually managed by the Network System Preferences pane and isn't easily accessible via the command line. However, you can check if an interface is getting its IP from DHCP by looking at the System Preferences -> Network pane or by checking if there's a running `dhclient` process for that interface.

6. **Firewall/NAT/Port Forwarding rules**: macOS uses `pf` (Packet Filter) for firewalling and NAT. Rules are typically stored in `/etc/pf.conf` or other files in `/etc/pf.anchors`. You can view the active rule set with `sudo pfctl -s all`.

Remember, macOS is a Unix-based system, and some of these commands will require appropriate permissions (i.e., sudo/root).

Also, note that while these commands can give you a lot of information, the way network configuration is handled in macOS is quite different from how it's done in Linux. In macOS, much of the network configuration is handled dynamically by the system and can't be as easily controlled by editing a single file as in Linux.
