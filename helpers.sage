import csv
from collections import Counter

def _load_graphs_from_csv(filename):
    graphs_list = []
    with open(filename, newline='') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            G = Graph(row['graph6'], immutable=True)
            graphs_list.append(G)
    return graphs_list

def _connected_graphs_upto(n):
    for i in range(2, n+1):
        for G in graphs(i):
            if G.is_connected():
                yield G.copy(immutable=True)

def _iterate_permutations(vertex_set, random_permutations=None):
    if random_permutations:
        for x in range(random_permutations):
            yield Permutations(vertex_set).random_element()
    else:
        for pi in Permutations(vertex_set):
            yield pi

def _has_induced_subgraph(G, graphs_list):
    for H in graphs_list:
        if G.subgraph_search(H, induced=True):
            return True
    return False

def _find_lower_bound(G, graphs_dict):
    for k in sorted(graphs_dict, reverse=True):
        if _has_induced_subgraph(G, graphs_dict[k]):
            return k
    return 1
