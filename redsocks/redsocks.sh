#! /bin/sh

case "$1" in
start|"")
cd /opt/proxy/redsocks
if [ -e redsocks.log ] ; then
rm redsocks.log
fi
./redsocks -p /opt/proxy/redsocks/redsocks.pid #set daemon = on in config file
# start redirection
iptables -t nat -A OUTPUT -p tcp --dport 80 -j REDIRECT --to 12345
iptables -t nat -A OUTPUT -p tcp --dport 443 -j REDIRECT --to 12345
;;

stop)
cd /opt/proxy/redsocks
if [ -e redsocks.pid ]; then
kill `cat redsocks.pid`
rm redsocks.pid
else
echo already killed, anyway, I will try killall
killall -9 redsocks
fi
# stop redirection
iptables -t nat -F OUTPUT
;;

start_ssh)
ssh -NfD 1234 user@example.cc #TODO: change it!!!
;;

stop_ssh)
ps aux|grep "ssh -NfD 1234"|awk '{print $2}'|xargs kill
;;

clean_dns)
iptables -A INPUT -p udp --sport 53 -m state --state ESTABLISHED -m gfw -j DROP -m comment --comment "drop gfw dns hijacks"
;;

*)
echo "Usage: redsocks start|stop|start_ssh|stop_ssh|clean_dns" >&2
exit 3
;;
esac
