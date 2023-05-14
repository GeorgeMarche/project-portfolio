# Import the necessary libraries
import networkx as nx
import matplotlib.pyplot as plt

# Create some convenient lambda functions
dkk = lambda x, y: nx.draw_kamada_kawai(x, with_labels = True, node_color = y)
png = lambda x: plt.savefig('KarateClub-%s.png' % x)

##############################
#####       STEP 1       #####
##############################
# Create the graph - populate it with nodes
ZKC = nx.Graph()
for i in range(34):
    ZKC.add_node(i + 1)

# These are the node connections that make edges
n1 = [
        2, 
        3, 3, 
        4, 4, 4, 
        5, 
        6, 
        7, 7, 7,
        8, 8, 8, 8,
        9, 9,
        10,
        11, 11, 11,
        12,
        13, 13,
        14, 14, 14, 14,
        17, 17,
        18, 18,
        20, 20,
        22, 22,
        26, 26,
        28, 28, 28,
        29,
        30, 30,
        31, 31,
        32, 32, 32, 32,
        33, 33, 33, 33, 33, 33, 33, 33, 33, 33, 33,
        34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34, 34
        ]
n2 = [
        1,
        1, 2,
        1, 2, 3,
        1,
        1,
        1, 5, 6,
        1, 2, 3, 4,
        1, 3,
        3,
        1, 5, 6,
        1,
        1, 4,
        1, 2, 3, 4,
        6, 7,
        1, 2,
        1, 2,
        1, 2,
        24, 25,
        3, 24, 25,
        3,
        24, 27,
        2, 9,
        1, 25, 26, 29,
        3, 9, 15, 16, 19, 21, 23, 24, 30, 31, 32,
        9, 10, 14, 15, 16, 19, 20, 21, 23, 24, 27, 28, 29, 30, 31, 32, 32
        ]

# Add each edge to the graph
for i in range(len(n1)):
    ZKC.add_edge(n1[i], n2[i])
    
# Set the proper colors at the right place
color = ['darkgreen'] * 34
for i, j in zip(n1, n2):
    if j == 1:
        color[i - 1] = 'darkred'
color[0] = 'red'
color[33] = 'lime'
color[31] = 'darkgreen'
color[16] = 'darkred'
        
dkk(ZKC, color)
png('OG') 

##############################
#####     STEP 2 & 3     #####
##############################
# Split the graph using the Girvan-Newman method
# Create an image for each iteration
i = 1
while nx.is_connected(ZKC):
    eb_dict = nx.edge_betweenness_centrality(ZKC)
    max_eb = max(eb_dict.values())
    for k in eb_dict.keys():
        if eb_dict[k] == max_eb:
            ZKC.remove_edge(k[0], k[1])
            plt.clf()
            dkk(ZKC, color)
            png('Iter%d' % i)
            i += 1

# Create an image of each faction
for c in nx.connected_components(ZKC):
    c = sorted(c)
    clr = [color[i - 1] for i in c]
            
    plt.clf()
    dkk(ZKC.subgraph(c), clr)
    png('MrHi' if 1 in c else 'John')

###############################
#####   EXTRA CREDIT Q1   #####
###############################
# Define a function to split the graph once more
def splitGraph(G):
    ncc = nx.number_connected_components(G)
    while nx.number_connected_components(G) != ncc + 1:
        eb_dict = nx.edge_betweenness_centrality(G)
        max_eb = max(eb_dict.values())
        for k in eb_dict.keys():
            if eb_dict[k] == max_eb:
                G.remove_edge(k[0], k[1])
    return G

# Define a function to create an image of each group
def splitPNG(G, color):
    i = 0
    ncc = nx.number_connected_components(G)
    for c in nx.connected_components(G):
        i += 1
        c = sorted(c) if ncc < 5 and i == 2 else c
        clr = [color[n - 1] for n in c]
        
        plt.clf()
        dkk(G.subgraph(c), clr)
        png('Group%dof%d' % (i, ncc))

# Split it into 3, 4, and 5 groups. Save the conglomerate
for i in range(3):
    ZKC = splitGraph(ZKC)
    dkk(ZKC, color)
    png('Split%d' % (i + 1))
    splitPNG(ZKC, color)
