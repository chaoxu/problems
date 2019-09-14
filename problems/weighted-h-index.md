---
id: weighted-h-index
title: The weighted $h$-index problem
parameters:
  - type: input
    name: a
    description: Positive reals $a_1,\ldots,a_n$
  - type: input
    name: w
    description: Positive reals weights $w_1,\ldots,w_n$
  - type: output
    name: h
    description: the largest value $h$ such that $\sum_{i:a_i\geq h} w_i \geq h$.
  - type: complexity
    name: n
    description: length of the $a$
algorithms: [weighted-h-index-selection]
---

# Problem

Given positive reals $a_1,\ldots,a_n$ and weights $w_1,\ldots,w_n$, find the largest value $h$ such that $\sum_{i:a_i\geq h} w_i \geq h$.