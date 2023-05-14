# Import the necessary libraries
from itertools import combinations as combos
import matplotlib.pyplot as plt
import networkx as nx
import pandas as pd
import json

# Initialize user dictionary, weight dictionary, and graph
user_dict = {}
node_sz = {}
sizes = []
edge_wts = {}
weights = []
shared = nx.Graph()

# Get JSON data file
with open('tweet_data.json') as json_file:
    tweet_data = json.load(json_file)

# Get each Tweet's poster and domain
for tweet in tweet_data:
    
    # Add domain for the respective user
    user = tweet["User Screen Name"]
    domain = tweet["Domain"]
    if user not in user_dict:
        user_dict[user] = set([domain])
    else:
        user_dict[user].add(domain)

    # Increment size of the node
    if domain not in node_sz:
        node_sz[domain] = 1
    else:
        node_sz[domain] += 1

# Add domains as nodes
for domain in node_sz:
    shared.add_node(domain)
    sizes.append(node_sz[domain])

# Permutate each pair of domains under same user
for user in user_dict:
    edges = list(combos(user_dict[user], 2))

    # Update weight for the edge
    for edge in edges:
        if edge not in edge_wts:
            edge_wts[edge] = 1
        else:
            edge_wts[edge] += 1

# Add each edge to the graph
for edge in edge_wts:
    shared.add_edge(edge[0], edge[1])
    weights.append(edge_wts[edge])

# Draw graph and save to a PNG image
nx.draw_kamada_kawai(shared, with_labels = True, node_size = sizes, width = weights)
plt.savefig("SharedGraph.png")

