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
| 4 | ![](https://render.githubusercontent.com/render/math?math=C_4) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 5 | ![](https://render.githubusercontent.com/render/math?math=C_5) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 6 | net | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 6 | ![](https://render.githubusercontent.com/render/math?math=C_6) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 6 | ![](https://render.githubusercontent.com/render/math?math=S_3) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 7 | ![](https://render.githubusercontent.com/render/math?math=XF_2^2) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35493) | ![](https://hog.grinvin.org/GraphImage.action?id=35493&size=160) | `G_]rls` |
| 7 | ![](https://render.githubusercontent.com/render/math?math=T_2) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 7 | ![](https://render.githubusercontent.com/render/math?math=X_{31}) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35522) | ![](https://hog.grinvin.org/GraphImage.action?id=35522&size=160) | `G_]rls` |
| 7 | ![](https://render.githubusercontent.com/render/math?math=C_7) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 7 | rising sun | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 8 | ![](https://render.githubusercontent.com/render/math?math=XF_2^3) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35495) | ![](https://hog.grinvin.org/GraphImage.action?id=35495&size=160) | `G_]rls` |
| 8 | ![](https://render.githubusercontent.com/render/math?math=C_8) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 8 | ![](https://render.githubusercontent.com/render/math?math=XF_3^2) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35497) | ![](https://hog.grinvin.org/GraphImage.action?id=35497&size=160) | `G_]rls` |

### thinness 3

| n | name  | HoG | image         | graph6 | notes
:------------:|:--------------:|:-------------:|:-------------:|:-------------:|:-------------:|
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |

### thinness 4

| n | name  | HoG | image         | graph6 | notes
:------------:|:--------------:|:-------------:|:-------------:|:-------------:|:-------------:|
| 8 | 16-cell | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=176) | ![](https://hog.grinvin.org/GraphImage.action?id=176&size=160) | `TODO` |

### proper thinness 2

| n | name  | HoG | image         | graph6 | notes
:------------:|:--------------:|:-------------:|:-------------:|:-------------:|:-------------:|
| 4 | claw | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 4 | ![](https://render.githubusercontent.com/render/math?math=C_4) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 5 | ![](https://render.githubusercontent.com/render/math?math=C_5) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 6 | net | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 6 | ![](https://render.githubusercontent.com/render/math?math=C_6) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 6 | ![](https://render.githubusercontent.com/render/math?math=S_3) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 7 | ![](https://render.githubusercontent.com/render/math?math=C_7) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
| 8 | ![](https://render.githubusercontent.com/render/math?math=C_8) | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |

### proper thinness 3

| n | name  | HoG | image         | graph6 | notes
:------------:|:--------------:|:-------------:|:-------------:|:-------------:|:-------------:|
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |

### proper thinness 4

| n | name  | HoG | image         | graph6 | notes
:------------:|:--------------:|:-------------:|:-------------:|:-------------:|:-------------:|
| 7 | n/a | [link](https://hog.grinvin.org/ViewGraphInfo.action?id=35529) | ![](https://hog.grinvin.org/GraphImage.action?id=35529&size=160) | `G_]rls` |
