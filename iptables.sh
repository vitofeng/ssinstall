iptables-save > /etc/iptables.up.rules
touch /etc/network/if-pre-up.d/iptables
chmod +x /etc/network/if-pre-up.d/iptables
echo '#!/bin/sh' >> /etc/network/if-pre-up.d/iptables
echo '/sbin/iptables-restore < /etc/iptables.up.rules' >> /etc/network/if-pre-up.d/iptables
