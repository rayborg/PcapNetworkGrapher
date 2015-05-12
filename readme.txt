Install all required libraries:
Requirements:
wireshark
tshark
sudo apt-get install python-pip
sudo pip install networkx
sudo apt-get install python-numpy
sudo apt-get install python-scipy
sudo apt-get install python-matplotlib
sudo apt-get install graphviz

then run
./MainPcapGrapher.sh validpcapfile.pcap

This should generate a graph of the communication from the pcap and then you can save the output.

Note: You may want to clean the capture to not display broadcast junk:
!(eth.dst==ff:ff:ff:ff:ff:ff || eth.dst == 00:00:00:00:00:00 || ip.addr==255.255.255.255||ip.addr==0.0.0.0 || ipv6.dst==ff02::1:2 || eth.dst==01:80:c2:00:00:0e)
That's it.
