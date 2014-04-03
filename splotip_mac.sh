IP=`sudo arp-scan --interface=en0 --destaddr=90:59:af:64:85:fe --localnet | grep -Eo "[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]*\.[[:digit:]]*"`
echo $IP
