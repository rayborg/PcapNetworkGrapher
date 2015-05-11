import networkx as nx
import matplotlib.pyplot as plt


#Create an undirected network conversation diagram

G=nx.Graph()
G.add_node(1, mac='ab:ds:ds')
G.add_node(2)
G.add_edge(1,2)




#Optional
#add attributes to nodes:
#G.add_node(1, attribute='value')
#i.e. #G.add_node(3, ip='132.23.45.5')

#Weighted edges
#elist=[('a','b',5.0),('a','c',1.0)]
#G.add_weighted_edges_from(elist)


#Draw/plot graph
nx.draw(G, with_labels=True,font_size=14, font_weight='bold',nodelist=[2],node_color='b')
#without labels nx.draw(G)
plt.show()





