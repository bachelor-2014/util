IP=`sudo arp-scan --interface=eth0 --destaddr=90:59:af:64:85:fe --localnet | grep -Eo "[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]*"`
ssh root@$IP
