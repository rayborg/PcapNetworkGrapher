#!/bin/bash

#Give this a pcap file as input $1 is input
/*
Requirements:
wireshark
tshark
sudo apt-get install python-pip
sudo pip install networkx
sudo apt-get install python-numpy
sudo apt-get install python-scipy
sudo apt-get install python-matplotlib
sudo apt-get install graphviz
*/


tshark -o column.format:'"Source", "%s", "Destination", "%d"' -r $1 | sort | uniq | sort | sed -e "s/ //g" > conversationsPrivateClean.txt 
run ./generateGraphCap.sh conversationsPrivateClean.txt > outputPythonScript.py
python outputPythonScript.py