#!/bin/bash
#Create conversation list and then a network graph from a pcap file
tshark -o column.format:'"Source", "%s", "Destination", "%d"' -r $1 | sort | uniq | sort | sed -e "s/ //g" > conversations.txt 

#Create python plotting script and then run it
echo "import networkx as nx" > outputPythonScript.py
echo "import matplotlib.pyplot as plt" >> outputPythonScript.py

#Created graph nodes and edges
echo "G=nx.Graph()" >> outputPythonScript.py
awk -F"->" '{print "G.add_node(\""$1"\")" "\n" "G.add_node(\""$2"\")" "\n" "G.add_edge(\""$1"\",\""$2"\")"}' conversations.txt  >> outputPythonScript.py

#Draws graphs and then shows
echo "nx.draw(G, with_labels=True,font_size=14, font_weight='bold')" >> outputPythonScript.py
echo "plt.show()" >> outputPythonScript.py

#Runs the python grapher
python outputPythonScript.py