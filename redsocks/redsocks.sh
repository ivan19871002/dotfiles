#! /bin/sh

case "$1" in
start|"")
#set daemon = on in config file
redsocks -c ~/.dotfiles/redsocks/redsocks.conf

# start redirection
# Ignore LANs and some other reserved addresses.
# See http://en.wikipedia.org/wiki/Reserved_IP_addresses#Reserved_IPv4_addresses
# and http://tools.ietf.org/html/rfc5735 for full list of reserved networks.
iptables -t nat -A OUTPUT -d 0.0.0.0/8 -j RETURN
iptables -t nat -A OUTPUT -d 10.0.0.0/8 -j RETURN
iptables -t nat -A OUTPUT -d 127.0.0.0/8 -j RETURN
iptables -t nat -A OUTPUT -d 169.254.0.0/16 -j RETURN
iptables -t nat -A OUTPUT -d 172.16.0.0/12 -j RETURN
iptables -t nat -A OUTPUT -d 192.168.0.0/16 -j RETURN
iptables -t nat -A OUTPUT -d 224.0.0.0/4 -j RETURN
iptables -t nat -A OUTPUT -d 240.0.0.0/4 -j RETURN
iptables -t nat -A OUTPUT -p tcp --dport 30291 -j RETURN
iptables -t nat -A OUTPUT -p tcp -j REDIRECT --to-ports 12345
;;

stop)
killall -9 redsocks
# stop redirection
iptables -t nat -F OUTPUT
;;
*)
echo "Usage: redsocks start|stop" >&2
exit 3
;;
esac
