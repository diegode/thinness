# On the thinness and proper thinness of a graph

This code was written during the research of https://doi.org/10.1016/j.dam.2018.03.072, and depends on [SageMath](https://www.sagemath.org/) version 9 or later.

The test suite is run via `sage -t *.sage`.

As an example of how to use these functions in the Sage interactive shell:

```
sage: load('thinness.sage')
sage: load('proper-thinness.sage')
sage: thinness(graphs.ClawGraph())
(1, [1, 2, 0, 3], [[0, 1, 2, 3]])
sage: proper_thinness(graphs.ClawGraph())
(2, [0, 1, 2, 3], [[0, 3], [1, 2]])
sage: thinness(graphs.PetersenGraph(), random_permutations=1000)
(4, [3, 0, 4, 7, 1, 5, 6, 2, 8, 9], [[0, 5, 6, 9], [1, 2, 8], [3], [4, 7]])
sage: proper_thinness(graphs.PetersenGraph(), random_permutations=1000)
(5, [8, 2, 6, 1, 4, 3, 7, 0, 9, 5], [[0, 1], [3, 5], [4, 6], [9, 2], [7, 8]])
```
Some comments:

- The output by default includes a certificate of the value, i.e. an ordering and a partition of the vertex set. That can be disabled by passing `certificate = False`.
- To accelerate the computation you can use the `lower_bound` parameter when you know a lower bound for the (proper) thinness of the graph.
- When the `random_permutations` parameter is used, an approximation of the value is performed instead of the exact calculation.

## Classification of small graphs

In this section we classify all connected graphs of up to 8 vertices with respect to their thinness and proper thinness. We only list the minimal graphs for each (proper) thinness value, with respect to the induced subgraph partial order.

We use multiple ways of referencing a graph:

- When available, we show the name from [ISGCI "smallgraphs" website](https://www.graphclasses.org/smallgraphs.html).
- We uploaded all of these graphs to [The House of Graphs](https://hog.grinvin.org/), so the link is given.
- We provide a graph6 code for the graph, for a vertex labelling corresponding to an optimal (proper) thin representation.

### thinness 2

| n | name  | HoG | image         | graph6 | notes
:------------:|:--------------:|:-------------:|:-------------:|:-------------:|:-------------:|
| 4 | C_4 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=674) | ![](https://hog.grinvin.org/GraphImage.action?id=674&size=160) | `C]` |
| 5 | C_5 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=340) | ![](https://hog.grinvin.org/GraphImage.action?id=340&size=160) | `DdW` |
| 6 | C_6 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=670) | ![](https://hog.grinvin.org/GraphImage.action?id=670&size=160) | `EPpO` |
| 6 | net | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=548) | ![](https://hog.grinvin.org/GraphImage.action?id=548&size=160) | `ESFO` |
| 6 | S_3 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36261) | ![](https://hog.grinvin.org/GraphImage.action?id=36261&size=160) | `EWlw` |
| 7 | T_2 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=816) | ![](https://hog.grinvin.org/GraphImage.action?id=816&size=160) | ``F@`E_`` |
| 7 | XF_2^2 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35493) | ![](https://hog.grinvin.org/GraphImage.action?id=35493&size=160) | `FPBdO` |
| 7 | C_7 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=520) | ![](https://hog.grinvin.org/GraphImage.action?id=520&size=160) | `FPPSO` |
| 7 | rising sun | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=1286) | ![](https://hog.grinvin.org/GraphImage.action?id=1286&size=160) | `FUFTw` |
| 7 | X_{31} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35522) | ![](https://hog.grinvin.org/GraphImage.action?id=35522&size=160) | ``F`gNo`` |
| 8 | XF_2^3 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35495) | ![](https://hog.grinvin.org/GraphImage.action?id=35495&size=160) | `GD}?@S` |
| 8 | C_8 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=474) | ![](https://hog.grinvin.org/GraphImage.action?id=474&size=160) | `GE@cPO` |
| 8 | XF_3^2 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35497) | ![](https://hog.grinvin.org/GraphImage.action?id=35497&size=160) | `GXBdT{` |

### thinness 3

| n | name  | HoG | image         | graph6 | notes
:------------:|:--------------:|:-------------:|:-------------:|:-------------:|:-------------:|
| 6 | \co{3K_2} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=226) | ![](https://hog.grinvin.org/GraphImage.action?id=2265&size=160) | `E]~o` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35507) | ![](https://hog.grinvin.org/GraphImage.action?id=35507&size=160) | `FWfRo` |
| 7 | X_{88} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=1306) | ![](https://hog.grinvin.org/GraphImage.action?id=1306&size=160) | `FWnRo` |
| 7 | \co{C_7} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=710) | ![](https://hog.grinvin.org/GraphImage.action?id=710&size=160) | `F]fjo` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=19170) | ![](https://hog.grinvin.org/GraphImage.action?id=19170&size=160) | `FdZ~o` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35531) | ![](https://hog.grinvin.org/GraphImage.action?id=35531&size=160) | `GCzbzo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=30360) | ![](https://hog.grinvin.org/GraphImage.action?id=30360&size=160) | `GEAHrG` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35620) | ![](https://hog.grinvin.org/GraphImage.action?id=35620&size=160) | `GEFdR{` |
| 8 | bislit cube | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=958) | ![](https://hog.grinvin.org/GraphImage.action?id=958&size=160) | `GEFdrW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35537) | ![](https://hog.grinvin.org/GraphImage.action?id=35537&size=160) | ``GF`zvW`` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35607) | ![](https://hog.grinvin.org/GraphImage.action?id=35607&size=160) | `GLfNjw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35663) | ![](https://hog.grinvin.org/GraphImage.action?id=35663&size=160) | `GNI@~W` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35635) | ![](https://hog.grinvin.org/GraphImage.action?id=35635&size=160) | ``GOpR`w`` |
| 8 | X_{121} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35638) | ![](https://hog.grinvin.org/GraphImage.action?id=35638&size=160) | `GOpRdw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35626) | ![](https://hog.grinvin.org/GraphImage.action?id=35626&size=160) | ``GOtB`w`` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=19176) | ![](https://hog.grinvin.org/GraphImage.action?id=19176&size=160) | `GPpV~w` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35580) | ![](https://hog.grinvin.org/GraphImage.action?id=35580&size=160) | `GPrZvg` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35564) | ![](https://hog.grinvin.org/GraphImage.action?id=35564&size=160) | `GQNMc[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35629) | ![](https://hog.grinvin.org/GraphImage.action?id=35629&size=160) | `GQoHn?` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35632) | ![](https://hog.grinvin.org/GraphImage.action?id=35632&size=160) | `GQoHn_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35661) | ![](https://hog.grinvin.org/GraphImage.action?id=35661&size=160) | `GQsP~G` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35659) | ![](https://hog.grinvin.org/GraphImage.action?id=35659&size=160) | `GQsTjG` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35655) | ![](https://hog.grinvin.org/GraphImage.action?id=35655&size=160) | `GSFV~w` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35641) | ![](https://hog.grinvin.org/GraphImage.action?id=35641&size=160) | `GU@H~O` |
| 8 | X_{126} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=640) | ![](https://hog.grinvin.org/GraphImage.action?id=640&size=160) | `GUBJPo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35647) | ![](https://hog.grinvin.org/GraphImage.action?id=35647&size=160) | `GUBJRo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35657) | ![](https://hog.grinvin.org/GraphImage.action?id=35657&size=160) | `GUBjs{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35644) | ![](https://hog.grinvin.org/GraphImage.action?id=35644&size=160) | `GUDlUC` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35543) | ![](https://hog.grinvin.org/GraphImage.action?id=35543&size=160) | `GUHySs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35605) | ![](https://hog.grinvin.org/GraphImage.action?id=35605&size=160) | `GUYr}o` |
| 8 | \co{X_{126}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=160) | ![](https://hog.grinvin.org/GraphImage.action?id=160&size=160) | `GUYurW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35650) | ![](https://hog.grinvin.org/GraphImage.action?id=35650&size=160) | `GUoNjw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35539) | ![](https://hog.grinvin.org/GraphImage.action?id=35539&size=160) | `GVBLZs` |
| 8 | \co{X_{111}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35584) | ![](https://hog.grinvin.org/GraphImage.action?id=35584&size=160) | `GVomjW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35586) | ![](https://hog.grinvin.org/GraphImage.action?id=35586&size=160) | `GVomjw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35562) | ![](https://hog.grinvin.org/GraphImage.action?id=35562&size=160) | `GW]UbW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35560) | ![](https://hog.grinvin.org/GraphImage.action?id=35560&size=160) | `GW]UdW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35574) | ![](https://hog.grinvin.org/GraphImage.action?id=35574&size=160) | `GW]Uls` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35570) | ![](https://hog.grinvin.org/GraphImage.action?id=35570&size=160) | `GW]V}_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35545) | ![](https://hog.grinvin.org/GraphImage.action?id=35545&size=160) | `GWdVzo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35572) | ![](https://hog.grinvin.org/GraphImage.action?id=35572&size=160) | `GWdutW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35576) | ![](https://hog.grinvin.org/GraphImage.action?id=35576&size=160) | `GWdv\|g` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35552) | ![](https://hog.grinvin.org/GraphImage.action?id=35552&size=160) | `GWeuzo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35554) | ![](https://hog.grinvin.org/GraphImage.action?id=35554&size=160) | `GWftbw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35556) | ![](https://hog.grinvin.org/GraphImage.action?id=35556&size=160) | `GWf\|b{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35533) | ![](https://hog.grinvin.org/GraphImage.action?id=35533&size=160) | `GWjrs{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35535) | ![](https://hog.grinvin.org/GraphImage.action?id=35535&size=160) | `GWjrt{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35602) | ![](https://hog.grinvin.org/GraphImage.action?id=35602&size=160) | `GWn~r{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35568) | ![](https://hog.grinvin.org/GraphImage.action?id=35568&size=160) | `GWuRds` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35548) | ![](https://hog.grinvin.org/GraphImage.action?id=35548&size=160) | `GWuV\|o` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35617) | ![](https://hog.grinvin.org/GraphImage.action?id=35617&size=160) | `GXAYuS` |
| 8 | X_{79} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=1022) | ![](https://hog.grinvin.org/GraphImage.action?id=1022&size=160) | `GXA]Qo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35623) | ![](https://hog.grinvin.org/GraphImage.action?id=35623&size=160) | `GXwMc{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35558) | ![](https://hog.grinvin.org/GraphImage.action?id=35558&size=160) | `G[Z?~_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35578) | ![](https://hog.grinvin.org/GraphImage.action?id=35578&size=160) | `G[Z^_{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35566) | ![](https://hog.grinvin.org/GraphImage.action?id=35566&size=160) | `G[Zo}C` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35550) | ![](https://hog.grinvin.org/GraphImage.action?id=35550&size=160) | `G[o^jw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35596) | ![](https://hog.grinvin.org/GraphImage.action?id=35596&size=160) | `G\jg}s` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35594) | ![](https://hog.grinvin.org/GraphImage.action?id=35594&size=160) | `G\v_zk` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35600) | ![](https://hog.grinvin.org/GraphImage.action?id=35600&size=160) | `G\v_z{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35598) | ![](https://hog.grinvin.org/GraphImage.action?id=35598&size=160) | `G\zg}s` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35541) | ![](https://hog.grinvin.org/GraphImage.action?id=35541&size=160) | `G]FVtw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35588) | ![](https://hog.grinvin.org/GraphImage.action?id=35588&size=160) | `G]o\ng` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35590) | ![](https://hog.grinvin.org/GraphImage.action?id=35590&size=160) | `G]s\ng` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35592) | ![](https://hog.grinvin.org/GraphImage.action?id=35592&size=160) | `G]}o}K` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35609) | ![](https://hog.grinvin.org/GraphImage.action?id=35609&size=160) | `G^ZKh{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35653) | ![](https://hog.grinvin.org/GraphImage.action?id=35653&size=160) | `G_jdzo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35613) | ![](https://hog.grinvin.org/GraphImage.action?id=35613&size=160) | `Gd\|b\|g` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35611) | ![](https://hog.grinvin.org/GraphImage.action?id=35611&size=160) | `Gd\|dng` |
| 8 | \co{C_8} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36263) | ![](https://hog.grinvin.org/GraphImage.action?id=36263&size=160) | `Gfynjw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35582) | ![](https://hog.grinvin.org/GraphImage.action?id=35582&size=160) | `GkD~Tk` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35615) | ![](https://hog.grinvin.org/GraphImage.action?id=35615&size=160) | `Gl{s~K` |

### thinness 4

| n | name  | HoG | image         | graph6 | notes
:------------:|:--------------:|:-------------:|:-------------:|:-------------:|:-------------:|
| 8 | 16-cell | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=176) | ![](https://hog.grinvin.org/GraphImage.action?id=176&size=160) | `G]~v~w` |

### proper thinness 2

| n | name  | HoG | image         | graph6 | notes
:------------:|:--------------:|:-------------:|:-------------:|:-------------:|:-------------:|
| 4 | claw | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=500) | ![](https://hog.grinvin.org/GraphImage.action?id=500&size=160) | `CF` |
| 4 | C_4 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=674) | ![](https://hog.grinvin.org/GraphImage.action?id=674&size=160) | `C]` |
| 5 | C_5 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=340) | ![](https://hog.grinvin.org/GraphImage.action?id=340&size=160) | `DkK` |
| 6 | net | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=548) | ![](https://hog.grinvin.org/GraphImage.action?id=548&size=160) | `EPb_` |
| 6 | S_3 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36261) | ![](https://hog.grinvin.org/GraphImage.action?id=36261&size=160) | `EPxw` |
| 6 | C_6 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=670) | ![](https://hog.grinvin.org/GraphImage.action?id=670&size=160) | `EWdO` |
| 7 | C_7 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=520) | ![](https://hog.grinvin.org/GraphImage.action?id=520&size=160) | ``F`IQO`` |
| 8 | C_8 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=474) | ![](https://hog.grinvin.org/GraphImage.action?id=474&size=160) | `GOKUAG` |

### proper thinness 3

| n | name  | HoG | image         | graph6 | notes
:------------:|:--------------:|:-------------:|:-------------:|:-------------:|:-------------:|
| 6 | twin-C_5 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=898) | ![](https://hog.grinvin.org/GraphImage.action?id=898&size=160) | ``EF`g`` |
| 6 | \co{butterfly \cup K_1} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=21169) | ![](https://hog.grinvin.org/GraphImage.action?id=21169&size=160) | `EW~G` |
| 6 | \co{3K_2} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=226) | ![](https://hog.grinvin.org/GraphImage.action?id=226&size=160) | `E]~o` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35515) | ![](https://hog.grinvin.org/GraphImage.action?id=35515&size=160) | `F?NuW` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35509) | ![](https://hog.grinvin.org/GraphImage.action?id=35509&size=160) | `F?}Bw` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=868) | ![](https://hog.grinvin.org/GraphImage.action?id=868&size=160) | `FBYNO` |
| 7 | X_{14} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35718) | ![](https://hog.grinvin.org/GraphImage.action?id=35718&size=160) | `FB}N?` |
| 7 | \co{X_{105}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35513) | ![](https://hog.grinvin.org/GraphImage.action?id=35513&size=160) | `FCFVO` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=778) | ![](https://hog.grinvin.org/GraphImage.action?id=778&size=160) | `FEAjO` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35517) | ![](https://hog.grinvin.org/GraphImage.action?id=35517&size=160) | `FEA~W` |
| 7 | X_3 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35668) | ![](https://hog.grinvin.org/GraphImage.action?id=35668&size=160) | `FEBkO` |
| 7 | \co{X_{97}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35670) | ![](https://hog.grinvin.org/GraphImage.action?id=35670&size=160) | `FEoNO` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35511) | ![](https://hog.grinvin.org/GraphImage.action?id=35511&size=160) | `FE{N?` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35675) | ![](https://hog.grinvin.org/GraphImage.action?id=35675&size=160) | `FFBHw` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35687) | ![](https://hog.grinvin.org/GraphImage.action?id=35687&size=160) | `FFB~o` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35720) | ![](https://hog.grinvin.org/GraphImage.action?id=35720&size=160) | `FFfbW` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35722) | ![](https://hog.grinvin.org/GraphImage.action?id=35722&size=160) | `FFfbw` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=910) | ![](https://hog.grinvin.org/GraphImage.action?id=910&size=160) | `FFzfw` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35750) | ![](https://hog.grinvin.org/GraphImage.action?id=35750&size=160) | `FGy~_` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35724) | ![](https://hog.grinvin.org/GraphImage.action?id=35724&size=160) | `FHyno` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35707) | ![](https://hog.grinvin.org/GraphImage.action?id=35707&size=160) | `FO^uG` |
| 7 | \co{X_{90}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=1345) | ![](https://hog.grinvin.org/GraphImage.action?id=1345&size=160) | `FOt@g` |
| 7 | \co{X_{42}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35690) | ![](https://hog.grinvin.org/GraphImage.action?id=35690&size=160) | `FOt@w` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35728) | ![](https://hog.grinvin.org/GraphImage.action?id=35728&size=160) | `FO~uw` |
| 7 | X_{107} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35677) | ![](https://hog.grinvin.org/GraphImage.action?id=35677&size=160) | `FPJn_` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35507) | ![](https://hog.grinvin.org/GraphImage.action?id=35507&size=160) | `FPrRo` |
| 7 | X_{88} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=1306) | ![](https://hog.grinvin.org/GraphImage.action?id=1306&size=160) | `FPzRo` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35754) | ![](https://hog.grinvin.org/GraphImage.action?id=35754&size=160) | `FPzRw` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35694) | ![](https://hog.grinvin.org/GraphImage.action?id=35694&size=160) | `FRBm?` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35696) | ![](https://hog.grinvin.org/GraphImage.action?id=35696&size=160) | `FRBmG` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35709) | ![](https://hog.grinvin.org/GraphImage.action?id=35709&size=160) | `FSFVO` |
| 7 | \co{S_3 \cup K_1} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36265) | ![](https://hog.grinvin.org/GraphImage.action?id=36265&size=160) | `FSFVw` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35705) | ![](https://hog.grinvin.org/GraphImage.action?id=35705&size=160) | `FUBjO` |
| 7 | X_{36} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35700) | ![](https://hog.grinvin.org/GraphImage.action?id=35700&size=160) | `FUFFO` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35702) | ![](https://hog.grinvin.org/GraphImage.action?id=35702&size=160) | `FUFmG` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35713) | ![](https://hog.grinvin.org/GraphImage.action?id=35713&size=160) | `FVFBW` |
| 7 | \co{X_{176}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35715) | ![](https://hog.grinvin.org/GraphImage.action?id=35715&size=160) | `FVFBw` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35698) | ![](https://hog.grinvin.org/GraphImage.action?id=35698&size=160) | `FVFR_` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35692) | ![](https://hog.grinvin.org/GraphImage.action?id=35692&size=160) | `FVSUG` |
| 7 | X_{87} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35748) | ![](https://hog.grinvin.org/GraphImage.action?id=35748&size=160) | `FVcmW` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35745) | ![](https://hog.grinvin.org/GraphImage.action?id=35745&size=160) | `FVomg` |
| 7 | \co{X_{88}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=536) | ![](https://hog.grinvin.org/GraphImage.action?id=536&size=160) | ``FW`\_`` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35738) | ![](https://hog.grinvin.org/GraphImage.action?id=35738&size=160) | `FWdzo` |
| 7 | BW_3 | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=27022) | ![](https://hog.grinvin.org/GraphImage.action?id=27022&size=160) | `FWfQ_` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=21254) | ![](https://hog.grinvin.org/GraphImage.action?id=21254&size=160) | `FWf}g` |
| 7 | co-eiffeltower | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36267) | ![](https://hog.grinvin.org/GraphImage.action?id=36267&size=160) | `FWnzo` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35756) | ![](https://hog.grinvin.org/GraphImage.action?id=35756&size=160) | `FWn}g` |
| 7 | X_{46} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35740) | ![](https://hog.grinvin.org/GraphImage.action?id=35740&size=160) | `FWrv_` |
| 7 | \co{X_{127}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35730) | ![](https://hog.grinvin.org/GraphImage.action?id=35730&size=160) | `FWvNo` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=21256) | ![](https://hog.grinvin.org/GraphImage.action?id=21256&size=160) | `FWvVw` |
| 7 | X_{15} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35735) | ![](https://hog.grinvin.org/GraphImage.action?id=35735&size=160) | `FWvsg` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35752) | ![](https://hog.grinvin.org/GraphImage.action?id=35752&size=160) | `FWvtg` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35743) | ![](https://hog.grinvin.org/GraphImage.action?id=35743&size=160) | `FW~Vg` |
| 7 | X_{104} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35672) | ![](https://hog.grinvin.org/GraphImage.action?id=35672&size=160) | `FXA]W` |
| 7 | X_{103} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35684) | ![](https://hog.grinvin.org/GraphImage.action?id=35684&size=160) | `FXBlw` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35682) | ![](https://hog.grinvin.org/GraphImage.action?id=35682&size=160) | `FXBmw` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35680) | ![](https://hog.grinvin.org/GraphImage.action?id=35680&size=160) | `FXJUW` |
| 7 | X_{11} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35758) | ![](https://hog.grinvin.org/GraphImage.action?id=35758&size=160) | `FXvMg` |
| 7 | \co{X_{173}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35665) | ![](https://hog.grinvin.org/GraphImage.action?id=35665&size=160) | `FZfmO` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35726) | ![](https://hog.grinvin.org/GraphImage.action?id=35726&size=160) | `F\BHw` |
| 7 | \co{C_6 \cup K_1} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=21193) | ![](https://hog.grinvin.org/GraphImage.action?id=21193&size=160) | `F\p^w` |
| 7 | \co{C_7} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=710) | ![](https://hog.grinvin.org/GraphImage.action?id=710&size=160) | `F^fJW` |
| 7 | X_{90} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=20566) | ![](https://hog.grinvin.org/GraphImage.action?id=20566&size=160) | `FbmnG` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35711) | ![](https://hog.grinvin.org/GraphImage.action?id=35711&size=160) | `FckVW` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35761) | ![](https://hog.grinvin.org/GraphImage.action?id=35761&size=160) | `Fd\|f_` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=33696) | ![](https://hog.grinvin.org/GraphImage.action?id=33696&size=160) | `Fd\|n_` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=19170) | ![](https://hog.grinvin.org/GraphImage.action?id=19170&size=160) | `FkN~o` |
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35733) | ![](https://hog.grinvin.org/GraphImage.action?id=35733&size=160) | `FlR[O` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36149) | ![](https://hog.grinvin.org/GraphImage.action?id=36149&size=160) | `G?WNSw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36178) | ![](https://hog.grinvin.org/GraphImage.action?id=36178&size=160) | `G?WNS{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36133) | ![](https://hog.grinvin.org/GraphImage.action?id=36133&size=160) | `G?cNBK` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36031) | ![](https://hog.grinvin.org/GraphImage.action?id=36031&size=160) | `G?gM@{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36081) | ![](https://hog.grinvin.org/GraphImage.action?id=36081&size=160) | `G?oDjk` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36067) | ![](https://hog.grinvin.org/GraphImage.action?id=36067&size=160) | `G?oDxW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36113) | ![](https://hog.grinvin.org/GraphImage.action?id=36113&size=160) | `G?oDz{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36069) | ![](https://hog.grinvin.org/GraphImage.action?id=36069&size=160) | `G?rON_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36151) | ![](https://hog.grinvin.org/GraphImage.action?id=36151&size=160) | `G?wCj{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36180) | ![](https://hog.grinvin.org/GraphImage.action?id=36180&size=160) | `G?wCz{` |
| 8 | \co{X_{135}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36041) | ![](https://hog.grinvin.org/GraphImage.action?id=36041&size=160) | `G@E]ns` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36035) | ![](https://hog.grinvin.org/GraphImage.action?id=36035&size=160) | `G@FMlw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35888) | ![](https://hog.grinvin.org/GraphImage.action?id=35888&size=160) | `G@cFdg` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36085) | ![](https://hog.grinvin.org/GraphImage.action?id=36085&size=160) | `G@yNFo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35960) | ![](https://hog.grinvin.org/GraphImage.action?id=35960&size=160) | `GBEMbW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35962) | ![](https://hog.grinvin.org/GraphImage.action?id=35962&size=160) | `GBEMbw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36024) | ![](https://hog.grinvin.org/GraphImage.action?id=36024&size=160) | `GBEMj[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35948) | ![](https://hog.grinvin.org/GraphImage.action?id=35948&size=160) | `GBENUC` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35914) | ![](https://hog.grinvin.org/GraphImage.action?id=35914&size=160) | `GBFc?{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35884) | ![](https://hog.grinvin.org/GraphImage.action?id=35884&size=160) | `GBbn?C` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36197) | ![](https://hog.grinvin.org/GraphImage.action?id=36197&size=160) | `GB}FFW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36239) | ![](https://hog.grinvin.org/GraphImage.action?id=36239&size=160) | `GB}Zfs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35932) | ![](https://hog.grinvin.org/GraphImage.action?id=35932&size=160) | `GCEmIO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35946) | ![](https://hog.grinvin.org/GraphImage.action?id=35946&size=160) | `GCFBZO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35936) | ![](https://hog.grinvin.org/GraphImage.action?id=35936&size=160) | `GCFByO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35938) | ![](https://hog.grinvin.org/GraphImage.action?id=35938&size=160) | `GCFFyO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35940) | ![](https://hog.grinvin.org/GraphImage.action?id=35940&size=160) | `GCFFyS` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35986) | ![](https://hog.grinvin.org/GraphImage.action?id=35986&size=160) | `GCFFzw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35978) | ![](https://hog.grinvin.org/GraphImage.action?id=35978&size=160) | `GCFF\|k` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35950) | ![](https://hog.grinvin.org/GraphImage.action?id=35950&size=160) | `GCFmH[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36028) | ![](https://hog.grinvin.org/GraphImage.action?id=36028&size=160) | `GCF}jS` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35916) | ![](https://hog.grinvin.org/GraphImage.action?id=35916&size=160) | `GCZo^?` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36135) | ![](https://hog.grinvin.org/GraphImage.action?id=36135&size=160) | `GC[OfO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35904) | ![](https://hog.grinvin.org/GraphImage.action?id=35904&size=160) | `GCcNR{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35870) | ![](https://hog.grinvin.org/GraphImage.action?id=35870&size=160) | `GCkMBw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35890) | ![](https://hog.grinvin.org/GraphImage.action?id=35890&size=160) | `GCwF\|K` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35864) | ![](https://hog.grinvin.org/GraphImage.action?id=35864&size=160) | `GCwMDw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35876) | ![](https://hog.grinvin.org/GraphImage.action?id=35876&size=160) | `GCwMVw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35902) | ![](https://hog.grinvin.org/GraphImage.action?id=35902&size=160) | `GC{MZo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35974) | ![](https://hog.grinvin.org/GraphImage.action?id=35974&size=160) | `GDA^uc` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36004) | ![](https://hog.grinvin.org/GraphImage.action?id=36004&size=160) | `GDE}]_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36184) | ![](https://hog.grinvin.org/GraphImage.action?id=36184&size=160) | `GDmVR{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36039) | ![](https://hog.grinvin.org/GraphImage.action?id=36039&size=160) | `GE?\|\|o` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36008) | ![](https://hog.grinvin.org/GraphImage.action?id=36008&size=160) | `GEAnZ[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35980) | ![](https://hog.grinvin.org/GraphImage.action?id=35980&size=160) | `GEBk^w` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36012) | ![](https://hog.grinvin.org/GraphImage.action?id=36012&size=160) | `GEFCZo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36033) | ![](https://hog.grinvin.org/GraphImage.action?id=36033&size=160) | `GEFP\w` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35998) | ![](https://hog.grinvin.org/GraphImage.action?id=35998&size=160) | `GEFUVo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35988) | ![](https://hog.grinvin.org/GraphImage.action?id=35988&size=160) | `GEJp_S` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36059) | ![](https://hog.grinvin.org/GraphImage.action?id=36059&size=160) | ``GERK`g`` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35968) | ![](https://hog.grinvin.org/GraphImage.action?id=35968&size=160) | `GE_G@s` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35868) | ![](https://hog.grinvin.org/GraphImage.action?id=35868&size=160) | `GEoKT{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36083) | ![](https://hog.grinvin.org/GraphImage.action?id=36083&size=160) | `GEoOdw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36000) | ![](https://hog.grinvin.org/GraphImage.action?id=36000&size=160) | `GEsNFW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35994) | ![](https://hog.grinvin.org/GraphImage.action?id=35994&size=160) | `GEwMNO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35996) | ![](https://hog.grinvin.org/GraphImage.action?id=35996&size=160) | `GEwM^O` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36002) | ![](https://hog.grinvin.org/GraphImage.action?id=36002&size=160) | `GEwMn?` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36037) | ![](https://hog.grinvin.org/GraphImage.action?id=36037&size=160) | `GE{w^o` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35990) | ![](https://hog.grinvin.org/GraphImage.action?id=35990&size=160) | `GFGuoW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36095) | ![](https://hog.grinvin.org/GraphImage.action?id=36095&size=160) | `GFMFC{` |
| 8 | X_{142} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35992) | ![](https://hog.grinvin.org/GraphImage.action?id=35992&size=160) | `GFsE]?` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36103) | ![](https://hog.grinvin.org/GraphImage.action?id=36103&size=160) | `GFwcDS` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36119) | ![](https://hog.grinvin.org/GraphImage.action?id=36119&size=160) | `GFwkd{` |
| 8 | X_{148} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36093) | ![](https://hog.grinvin.org/GraphImage.action?id=36093&size=160) | `GFy@dw` |
| 8 | X_{151} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36089) | ![](https://hog.grinvin.org/GraphImage.action?id=36089&size=160) | `GFyHD{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35878) | ![](https://hog.grinvin.org/GraphImage.action?id=35878&size=160) | `GGJS?s` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35882) | ![](https://hog.grinvin.org/GraphImage.action?id=35882&size=160) | `GGJcAs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35886) | ![](https://hog.grinvin.org/GraphImage.action?id=35886&size=160) | `GGJs@{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36065) | ![](https://hog.grinvin.org/GraphImage.action?id=36065&size=160) | `GGMKaw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36229) | ![](https://hog.grinvin.org/GraphImage.action?id=36229&size=160) | `GG]fTs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36075) | ![](https://hog.grinvin.org/GraphImage.action?id=36075&size=160) | `GGe{MW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36111) | ![](https://hog.grinvin.org/GraphImage.action?id=36111&size=160) | `GGuCj{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36026) | ![](https://hog.grinvin.org/GraphImage.action?id=36026&size=160) | `GHJfkW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36203) | ![](https://hog.grinvin.org/GraphImage.action?id=36203&size=160) | `GHUb]O` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36157) | ![](https://hog.grinvin.org/GraphImage.action?id=36157&size=160) | `GHa\|mg` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35785) | ![](https://hog.grinvin.org/GraphImage.action?id=35785&size=160) | `GHe]Ns` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35824) | ![](https://hog.grinvin.org/GraphImage.action?id=35824&size=160) | `GHfNH{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35781) | ![](https://hog.grinvin.org/GraphImage.action?id=35781&size=160) | `GHf]Ks` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35828) | ![](https://hog.grinvin.org/GraphImage.action?id=35828&size=160) | `GHi~Qs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35818) | ![](https://hog.grinvin.org/GraphImage.action?id=35818&size=160) | `GHn]Ks` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36215) | ![](https://hog.grinvin.org/GraphImage.action?id=36215&size=160) | `GHyByk` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36207) | ![](https://hog.grinvin.org/GraphImage.action?id=36207&size=160) | `GI_~@k` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35894) | ![](https://hog.grinvin.org/GraphImage.action?id=35894&size=160) | `GKGfRg` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35804) | ![](https://hog.grinvin.org/GraphImage.action?id=35804&size=160) | `GKyXm_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35892) | ![](https://hog.grinvin.org/GraphImage.action?id=35892&size=160) | `GL?a]S` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36020) | ![](https://hog.grinvin.org/GraphImage.action?id=36020&size=160) | `GLCffG` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36137) | ![](https://hog.grinvin.org/GraphImage.action?id=36137&size=160) | `GLMEfg` |
| 8 | X_{120} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36221) | ![](https://hog.grinvin.org/GraphImage.action?id=36221&size=160) | `GLMVBw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35543) | ![](https://hog.grinvin.org/GraphImage.action?id=35543&size=160) | `GLO}sW` |
| 8 | X_{146} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36091) | ![](https://hog.grinvin.org/GraphImage.action?id=36091&size=160) | `GMsKug` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=20576) | ![](https://hog.grinvin.org/GraphImage.action?id=20576&size=160) | `GMx]d_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35814) | ![](https://hog.grinvin.org/GraphImage.action?id=35814&size=160) | `GMzHck` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36006) | ![](https://hog.grinvin.org/GraphImage.action?id=36006&size=160) | `GNGedw` |
| 8 | X_{110} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36235) | ![](https://hog.grinvin.org/GraphImage.action?id=36235&size=160) | `GNIFx{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36237) | ![](https://hog.grinvin.org/GraphImage.action?id=36237&size=160) | `GNIF~W` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36018) | ![](https://hog.grinvin.org/GraphImage.action?id=36018&size=160) | `GNJcX_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36172) | ![](https://hog.grinvin.org/GraphImage.action?id=36172&size=160) | `GNMfM_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36164) | ![](https://hog.grinvin.org/GraphImage.action?id=36164&size=160) | `GNNeCc` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35934) | ![](https://hog.grinvin.org/GraphImage.action?id=35934&size=160) | `GOHNeC` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35972) | ![](https://hog.grinvin.org/GraphImage.action?id=35972&size=160) | `GOH]Lk` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35976) | ![](https://hog.grinvin.org/GraphImage.action?id=35976&size=160) | `GOIuJ{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36141) | ![](https://hog.grinvin.org/GraphImage.action?id=36141&size=160) | `GOU^ck` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36097) | ![](https://hog.grinvin.org/GraphImage.action?id=36097&size=160) | `GOYjVo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36227) | ![](https://hog.grinvin.org/GraphImage.action?id=36227&size=160) | `GO]fRw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35779) | ![](https://hog.grinvin.org/GraphImage.action?id=35779&size=160) | `GOlvFc` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36053) | ![](https://hog.grinvin.org/GraphImage.action?id=36053&size=160) | `GOr_y?` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36049) | ![](https://hog.grinvin.org/GraphImage.action?id=36049&size=160) | `GOvOa?` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36217) | ![](https://hog.grinvin.org/GraphImage.action?id=36217&size=160) | `GO~Yck` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36109) | ![](https://hog.grinvin.org/GraphImage.action?id=36109&size=160) | `GPMcnS` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36101) | ![](https://hog.grinvin.org/GraphImage.action?id=36101&size=160) | `GPMfe{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36205) | ![](https://hog.grinvin.org/GraphImage.action?id=36205&size=160) | `GPU{R_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36159) | ![](https://hog.grinvin.org/GraphImage.action?id=36159&size=160) | `GPbufK` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36182) | ![](https://hog.grinvin.org/GraphImage.action?id=36182&size=160) | `GPbvfK` |
| 8 | \co{X_{178}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36166) | ![](https://hog.grinvin.org/GraphImage.action?id=36166&size=160) | `GPiVfK` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35545) | ![](https://hog.grinvin.org/GraphImage.action?id=35545&size=160) | `GPp~qc` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35795) | ![](https://hog.grinvin.org/GraphImage.action?id=35795&size=160) | `GPryno` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35844) | ![](https://hog.grinvin.org/GraphImage.action?id=35844&size=160) | `GPrz~o` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35793) | ![](https://hog.grinvin.org/GraphImage.action?id=35793&size=160) | `GPxtes` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35602) | ![](https://hog.grinvin.org/GraphImage.action?id=35602&size=160) | `GPz~r{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36129) | ![](https://hog.grinvin.org/GraphImage.action?id=36129&size=160) | `GQDmA[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36125) | ![](https://hog.grinvin.org/GraphImage.action?id=36125&size=160) | `GQDmLO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35862) | ![](https://hog.grinvin.org/GraphImage.action?id=35862&size=160) | `GRCEBg` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35958) | ![](https://hog.grinvin.org/GraphImage.action?id=35958&size=160) | `GRNpCo` |
| 8 | X_{111} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=34007) | ![](https://hog.grinvin.org/GraphImage.action?id=34007&size=160) | `GRO\MO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35659) | ![](https://hog.grinvin.org/GraphImage.action?id=35659&size=160) | `GRO\]O` |
| 8 | X_{47} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36077) | ![](https://hog.grinvin.org/GraphImage.action?id=36077&size=160) | `GSwY@{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35896) | ![](https://hog.grinvin.org/GraphImage.action?id=35896&size=160) | `GTCErg` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36176) | ![](https://hog.grinvin.org/GraphImage.action?id=36176&size=160) | `GTD}fw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36209) | ![](https://hog.grinvin.org/GraphImage.action?id=36209&size=160) | `GTS]Rg` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35858) | ![](https://hog.grinvin.org/GraphImage.action?id=35858&size=160) | `GU?AXW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35860) | ![](https://hog.grinvin.org/GraphImage.action?id=35860&size=160) | `GU?AX{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35872) | ![](https://hog.grinvin.org/GraphImage.action?id=35872&size=160) | `GU?C}w` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35874) | ![](https://hog.grinvin.org/GraphImage.action?id=35874&size=160) | `GU?D}w` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35922) | ![](https://hog.grinvin.org/GraphImage.action?id=35922&size=160) | `GU?VB{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36121) | ![](https://hog.grinvin.org/GraphImage.action?id=36121&size=160) | `GU?mQO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36123) | ![](https://hog.grinvin.org/GraphImage.action?id=36123&size=160) | `GU?nQO` |
| 8 | \co{X_{117}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35880) | ![](https://hog.grinvin.org/GraphImage.action?id=35880&size=160) | `GU?wiO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35900) | ![](https://hog.grinvin.org/GraphImage.action?id=35900&size=160) | `GUCBL{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36161) | ![](https://hog.grinvin.org/GraphImage.action?id=36161&size=160) | `GUFMd{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35912) | ![](https://hog.grinvin.org/GraphImage.action?id=35912&size=160) | `GUPooW` |
| 8 | \co{X_{126}} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=160) | ![](https://hog.grinvin.org/GraphImage.action?id=160&size=160) | `GUYurW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35942) | ![](https://hog.grinvin.org/GraphImage.action?id=35942&size=160) | `GUo@dW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36105) | ![](https://hog.grinvin.org/GraphImage.action?id=36105&size=160) | `GUzgq?` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35924) | ![](https://hog.grinvin.org/GraphImage.action?id=35924&size=160) | `GV?CZ[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35926) | ![](https://hog.grinvin.org/GraphImage.action?id=35926&size=160) | `GV?E\[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36131) | ![](https://hog.grinvin.org/GraphImage.action?id=36131&size=160) | `GVF]IO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35846) | ![](https://hog.grinvin.org/GraphImage.action?id=35846&size=160) | `GVJtuS` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36057) | ![](https://hog.grinvin.org/GraphImage.action?id=36057&size=160) | `GVSOmc` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36087) | ![](https://hog.grinvin.org/GraphImage.action?id=36087&size=160) | `GVoIfg` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35856) | ![](https://hog.grinvin.org/GraphImage.action?id=35856&size=160) | `GWAAQw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=21259) | ![](https://hog.grinvin.org/GraphImage.action?id=21259&size=160) | `GWB\|Z[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35918) | ![](https://hog.grinvin.org/GraphImage.action?id=35918&size=160) | `GWHsIw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35920) | ![](https://hog.grinvin.org/GraphImage.action?id=35920&size=160) | `GWHsJw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35775) | ![](https://hog.grinvin.org/GraphImage.action?id=35775&size=160) | `GWVSn_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35777) | ![](https://hog.grinvin.org/GraphImage.action?id=35777&size=160) | `GWVSng` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35866) | ![](https://hog.grinvin.org/GraphImage.action?id=35866&size=160) | `GW[dUO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36231) | ![](https://hog.grinvin.org/GraphImage.action?id=36231&size=160) | `GW]@\|w` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36211) | ![](https://hog.grinvin.org/GraphImage.action?id=36211&size=160) | `GW]Ah{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36213) | ![](https://hog.grinvin.org/GraphImage.action?id=36213&size=160) | `GW]Al{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35832) | ![](https://hog.grinvin.org/GraphImage.action?id=35832&size=160) | `GW]Vuw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36127) | ![](https://hog.grinvin.org/GraphImage.action?id=36127&size=160) | ``GW`Rys`` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=19176) | ![](https://hog.grinvin.org/GraphImage.action?id=19176&size=160) | `GWdV~w` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35810) | ![](https://hog.grinvin.org/GraphImage.action?id=35810&size=160) | `GWd\uW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35799) | ![](https://hog.grinvin.org/GraphImage.action?id=35799&size=160) | `GWlvFs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36071) | ![](https://hog.grinvin.org/GraphImage.action?id=36071&size=160) | `GWmQKG` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36073) | ![](https://hog.grinvin.org/GraphImage.action?id=36073&size=160) | `GWmYKG` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35808) | ![](https://hog.grinvin.org/GraphImage.action?id=35808&size=160) | `GWt\uG` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35830) | ![](https://hog.grinvin.org/GraphImage.action?id=35830&size=160) | `GWt{vs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35834) | ![](https://hog.grinvin.org/GraphImage.action?id=35834&size=160) | `GWu^b{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35840) | ![](https://hog.grinvin.org/GraphImage.action?id=35840&size=160) | `GWu^r{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35812) | ![](https://hog.grinvin.org/GraphImage.action?id=35812&size=160) | `GWzI\|o` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35802) | ![](https://hog.grinvin.org/GraphImage.action?id=35802&size=160) | `GW~[m_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35797) | ![](https://hog.grinvin.org/GraphImage.action?id=35797&size=160) | `GW~{qg` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36051) | ![](https://hog.grinvin.org/GraphImage.action?id=36051&size=160) | `GXAIOo` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36014) | ![](https://hog.grinvin.org/GraphImage.action?id=36014&size=160) | `GXBC\o` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35982) | ![](https://hog.grinvin.org/GraphImage.action?id=35982&size=160) | `GXBdUs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35906) | ![](https://hog.grinvin.org/GraphImage.action?id=35906&size=160) | `GXBilC` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36099) | ![](https://hog.grinvin.org/GraphImage.action?id=36099&size=160) | `GX]IT[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36190) | ![](https://hog.grinvin.org/GraphImage.action?id=36190&size=160) | `GXa^Jw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35964) | ![](https://hog.grinvin.org/GraphImage.action?id=35964&size=160) | `GZCF[s` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36174) | ![](https://hog.grinvin.org/GraphImage.action?id=36174&size=160) | `GZEuD{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35910) | ![](https://hog.grinvin.org/GraphImage.action?id=35910&size=160) | `GZGSd{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35954) | ![](https://hog.grinvin.org/GraphImage.action?id=35954&size=160) | `G[?T^W` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35956) | ![](https://hog.grinvin.org/GraphImage.action?id=35956&size=160) | `G[?T\|W` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36147) | ![](https://hog.grinvin.org/GraphImage.action?id=36147&size=160) | `G[@N}w` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36139) | ![](https://hog.grinvin.org/GraphImage.action?id=36139&size=160) | `G[AZqW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36153) | ![](https://hog.grinvin.org/GraphImage.action?id=36153&size=160) | `G[DSno` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35966) | ![](https://hog.grinvin.org/GraphImage.action?id=35966&size=160) | `G[FgJw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35898) | ![](https://hog.grinvin.org/GraphImage.action?id=35898&size=160) | `G[GfRg` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35771) | ![](https://hog.grinvin.org/GraphImage.action?id=35771&size=160) | `G[H~ek` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36016) | ![](https://hog.grinvin.org/GraphImage.action?id=36016&size=160) | `G[vOhG` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36168) | ![](https://hog.grinvin.org/GraphImage.action?id=36168&size=160) | `G[{Mb{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36022) | ![](https://hog.grinvin.org/GraphImage.action?id=36022&size=160) | `G\CEJ{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35908) | ![](https://hog.grinvin.org/GraphImage.action?id=35908&size=160) | `G\KCbk` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35769) | ![](https://hog.grinvin.org/GraphImage.action?id=35769&size=160) | `G\kUnw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35930) | ![](https://hog.grinvin.org/GraphImage.action?id=35930&size=160) | `G]?DY{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35928) | ![](https://hog.grinvin.org/GraphImage.action?id=35928&size=160) | `G]?DZ[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36170) | ![](https://hog.grinvin.org/GraphImage.action?id=36170&size=160) | `G]EUl{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36219) | ![](https://hog.grinvin.org/GraphImage.action?id=36219&size=160) | `G]Eubs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36047) | ![](https://hog.grinvin.org/GraphImage.action?id=36047&size=160) | `G]NEhG` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35820) | ![](https://hog.grinvin.org/GraphImage.action?id=35820&size=160) | `G]YupW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36107) | ![](https://hog.grinvin.org/GraphImage.action?id=36107&size=160) | `G]poco` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35952) | ![](https://hog.grinvin.org/GraphImage.action?id=35952&size=160) | `G^?T[K` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36045) | ![](https://hog.grinvin.org/GraphImage.action?id=36045&size=160) | `G^?fv[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36145) | ![](https://hog.grinvin.org/GraphImage.action?id=36145&size=160) | `G^FtbO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36233) | ![](https://hog.grinvin.org/GraphImage.action?id=36233&size=160) | `G^Sh\|C` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35849) | ![](https://hog.grinvin.org/GraphImage.action?id=35849&size=160) | `G^YUTw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36055) | ![](https://hog.grinvin.org/GraphImage.action?id=36055&size=160) | `G^dP?c` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36115) | ![](https://hog.grinvin.org/GraphImage.action?id=36115&size=160) | ``G^t`So`` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36063) | ![](https://hog.grinvin.org/GraphImage.action?id=36063&size=160) | `G_[ccK` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35822) | ![](https://hog.grinvin.org/GraphImage.action?id=35822&size=160) | ``G`ZTnS`` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36225) | ![](https://hog.grinvin.org/GraphImage.action?id=36225&size=160) | `GayJfk` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36061) | ![](https://hog.grinvin.org/GraphImage.action?id=36061&size=160) | `GcXCN_` |
| 8 | X_{147} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36079) | ![](https://hog.grinvin.org/GraphImage.action?id=36079&size=160) | `GcwXFs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35944) | ![](https://hog.grinvin.org/GraphImage.action?id=35944&size=160) | `GdAafW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36143) | ![](https://hog.grinvin.org/GraphImage.action?id=36143&size=160) | `GdKLf[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35788) | ![](https://hog.grinvin.org/GraphImage.action?id=35788&size=160) | `GdP\|pS` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35826) | ![](https://hog.grinvin.org/GraphImage.action?id=35826&size=160) | `GdP\|ps` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35842) | ![](https://hog.grinvin.org/GraphImage.action?id=35842&size=160) | `GdR\|r{` |
| 8 | X_{117} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35854) | ![](https://hog.grinvin.org/GraphImage.action?id=35854&size=160) | `GfMvL[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36188) | ![](https://hog.grinvin.org/GraphImage.action?id=36188&size=160) | `Ggqmlk` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36223) | ![](https://hog.grinvin.org/GraphImage.action?id=36223&size=160) | `GgvBtW` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35783) | ![](https://hog.grinvin.org/GraphImage.action?id=35783&size=160) | `GhF{VC` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36192) | ![](https://hog.grinvin.org/GraphImage.action?id=36192&size=160) | `Gib}lS` |
| 8 | X_{125} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=21385) | ![](https://hog.grinvin.org/GraphImage.action?id=21385&size=160) | `Gib}l[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36117) | ![](https://hog.grinvin.org/GraphImage.action?id=36117&size=160) | `Gidqds` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35838) | ![](https://hog.grinvin.org/GraphImage.action?id=35838&size=160) | `Giymnc` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35816) | ![](https://hog.grinvin.org/GraphImage.action?id=35816&size=160) | `GjFkT[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35852) | ![](https://hog.grinvin.org/GraphImage.action?id=35852&size=160) | `Gjbkvc` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35791) | ![](https://hog.grinvin.org/GraphImage.action?id=35791&size=160) | `GkFh^o` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35806) | ![](https://hog.grinvin.org/GraphImage.action?id=35806&size=160) | `GlBsrO` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36195) | ![](https://hog.grinvin.org/GraphImage.action?id=36195&size=160) | `GldU~c` |
| 8 | \co{C_8} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36263) | ![](https://hog.grinvin.org/GraphImage.action?id=36263&size=160) | `Gl~Ljk` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35765) | ![](https://hog.grinvin.org/GraphImage.action?id=35765&size=160) | `Gm\|Stg` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36043) | ![](https://hog.grinvin.org/GraphImage.action?id=36043&size=160) | `GnEYFK` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36155) | ![](https://hog.grinvin.org/GraphImage.action?id=36155&size=160) | `GpIO~S` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36199) | ![](https://hog.grinvin.org/GraphImage.action?id=36199&size=160) | `GpP~Eo` |
| 8 | X_{144} | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35970) | ![](https://hog.grinvin.org/GraphImage.action?id=35970&size=160) | `GvKBFG` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35836) | ![](https://hog.grinvin.org/GraphImage.action?id=35836&size=160) | `GwvZLS` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35773) | ![](https://hog.grinvin.org/GraphImage.action?id=35773&size=160) | `GxBN\|w` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35767) | ![](https://hog.grinvin.org/GraphImage.action?id=35767&size=160) | `GxB{u[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36186) | ![](https://hog.grinvin.org/GraphImage.action?id=36186&size=160) | `GyJTMw` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35984) | ![](https://hog.grinvin.org/GraphImage.action?id=35984&size=160) | `G\|Deq_` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36010) | ![](https://hog.grinvin.org/GraphImage.action?id=36010&size=160) | `G}HTq_` |

### proper thinness 4

| n | name  | HoG | image         | graph6 | notes
:------------:|:--------------:|:-------------:|:-------------:|:-------------:|:-------------:|
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `GBbrJs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36241) | ![](https://hog.grinvin.org/GraphImage.action?id=36241&size=160) | `GC}VZ{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36247) | ![](https://hog.grinvin.org/GraphImage.action?id=36247&size=160) | ``GF`n~w`` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36243) | ![](https://hog.grinvin.org/GraphImage.action?id=36243&size=160) | `GFbvJs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36257) | ![](https://hog.grinvin.org/GraphImage.action?id=36257&size=160) | `GLz]nS` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35527) | ![](https://hog.grinvin.org/GraphImage.action?id=35527&size=160) | `GWRS\s` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36245) | ![](https://hog.grinvin.org/GraphImage.action?id=36245&size=160) | `GWjru[` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35586) | ![](https://hog.grinvin.org/GraphImage.action?id=35586&size=160) | `GWvtbs` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=21535) | ![](https://hog.grinvin.org/GraphImage.action?id=21535&size=160) | `GWzN~K` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36249) | ![](https://hog.grinvin.org/GraphImage.action?id=36249&size=160) | `GW~Fe{` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36251) | ![](https://hog.grinvin.org/GraphImage.action?id=36251&size=160) | `GW~F~c` |
| 8 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=36253) | ![](https://hog.grinvin.org/GraphImage.action?id=36253&size=160) | `GW~Nek` |
| 8 | 16-cell | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=176) | ![](https://hog.grinvin.org/GraphImage.action?id=176&size=160) | `G]~v~w` |
