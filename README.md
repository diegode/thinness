# Thinness

This code was developed during the research of https://doi.org/10.1016/j.dam.2018.03.072, and it requires a recent version of [SageMath](https://www.sagemath.org/).

The test suite is run via `sage -t *.sage`.

As an example of how to use these functions in the Sage interactive shell:

```
sage: load('thinness.sage')
sage: load('proper-thinness.sage')
sage: thinness(graphs.ClawGraph())
(1, [1, 2, 0, 3], [[0, 1, 2, 3]])
sage: proper_thinness(graphs.ClawGraph())
(2, [0, 1, 2, 3], [[0, 3], [1, 2]])
```
As you can see, the output by default includes a certificate of the value, i.e. an ordering and a partition of the vertex set.
