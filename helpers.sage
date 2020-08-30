
def _connected_graphs_upto(n):
    for i in range(2, n):
        for G in graphs(i):
            if G.is_connected():
                yield G

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
