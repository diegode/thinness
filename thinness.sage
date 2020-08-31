load('helpers.sage')

def graphs_by_thinness(n, *, minimal_only=True):
    r""" Calculates the thinness of connected non-isomorphic graphs up to `n` vertices.

    TESTS::

        sage: {k: len(l) for k, l in graphs_by_thinness(4, minimal_only=False).items()}
        {1: 8, 2: 1}
        sage: {k: len(l) for k, l in graphs_by_thinness(5, minimal_only=False).items()}
        {1: 23, 2: 7}
        sage: {k: len(l) for k, l in graphs_by_thinness(6, minimal_only=False).items()}
        {1: 79, 2: 62, 3: 1}
        sage: {k: len(l) for k, l in graphs_by_thinness(4).items()}
        {1: 1, 2: 1}
        sage: {k: len(l) for k, l in graphs_by_thinness(5).items()}
        {1: 1, 2: 2}
        sage: {k: len(l) for k, l in graphs_by_thinness(6).items()}
        {1: 1, 2: 5, 3: 1}
        sage: [G for G in _connected_graphs_upto(6) if G.is_interval()] == graphs_by_thinness(6, minimal_only=False)[1]
        True
    """
    graphs_dict = {}
    for G in _connected_graphs_upto(n):
        lower_bound = _find_lower_bound(G, graphs_dict)
        k = thinness(G, certificate=False, lower_bound=lower_bound)
        graphs_dict.setdefault(k, [])
        if minimal_only:
            if not _has_induced_subgraph(G, graphs_dict[k]):
                graphs_dict[k].append(G)
        else:
            graphs_dict[k].append(G)
    return graphs_dict

def graphs_by_thinness_precomputed():
    r""" Outputs the same as `graphs_by_thinness(8)` by using precomputed values, excluding the interval graphs.

    TESTS::

        sage: Counter([G.canonical_label() for G in graphs_by_thinness_precomputed()[2] if len(G.vertices()) <= 6]) == Counter([G.canonical_label() for G in graphs_by_thinness(6)[2]])
        True
        sage: Counter([G.canonical_label() for G in graphs_by_thinness_precomputed()[3] if len(G.vertices()) <= 6]) == Counter([G.canonical_label() for G in graphs_by_thinness(6)[3]])
        True
    """
    graphs_dict = {}
    for k in range(2, 5):
        graphs_dict[k] = _load_graphs_from_csv('data/thinness-{}.csv'.format(k))
    return graphs_dict

def thinness(G, *, lower_bound=1, certificate=True, random_permutations=None):
    r""" Calculates the thinness of graph G.

    TESTS::

        sage: thinness(graphs.CycleGraph(3), certificate=False)
        1
        sage: thinness(graphs.ClawGraph(), certificate=False)
        1
        sage: thinness(graphs.CycleGraph(4), certificate=False)
        2
        sage: thinness(graphs.CycleGraph(7).complement(), certificate=False)
        3
        sage: thinness(graphs.PetersenGraph(), certificate=False, random_permutations=100)
        4
    """
    min_chi, min_pi, min_partition = +Infinity, [], []
    for pi in _iterate_permutations(G.vertices(), random_permutations):
        H = _thinness_create_restrictions_graph(G, pi)
        partition = H.coloring()
        chi = len(partition)
        if chi < min_chi:
            min_chi, min_pi, min_partition = chi, pi, partition
            if min_chi == lower_bound:
                break
    if certificate:
        return (min_chi, min_pi, min_partition)
    else:
        return min_chi

def _thinness_cannot_be_in_same_class(G, pi, i, j):
    for k in range(j+1, len(G)):
        if G.has_edge(pi[i], pi[k]) and not G.has_edge(pi[j], pi[k]):
            return True
    return False

def _thinness_create_restrictions_graph(G, pi):
    n = len(G)
    H = Graph(n)
    for i in range(0, n):
        for j in range(i+1, n):
            if _thinness_cannot_be_in_same_class(G, pi, i, j):
                H.add_edge(pi[i], pi[j])
    return H
