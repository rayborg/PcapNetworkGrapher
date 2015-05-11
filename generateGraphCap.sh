#!/bin/bash
#Create plotting script and then runst it (not yet)


echo "import networkx as nx"
echo "import matplotlib.pyplot as plt"

echo "G=nx.Graph()"
awk -F"->" '{print "G.add_node(\""$1"\")" "\n" "G.add_node(\""$2"\")" "\n" "G.add_edge(\""$1"\",\""$2"\")"    }' $1

echo "nx.draw(G, with_labels=True,font_size=14, font_weight='bold')"
echo "plt.show()"