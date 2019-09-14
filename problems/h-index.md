---
id: h-index
title: The $h$-index problem
inherit: [weighted-h-index]
parameters:
  - type: input
    name: a
    description: Positive integers $a_1,\ldots,a_n$
  - type: input
    name: w
    description: 
  - type: output
    name: h
    description: the largest value $h$ such that $|\set{i | a_i \geq h}|\geq h$.
algorithms: [h-index-sort]
---

# Problem

Given positive integers $a_1,\ldots,a_n$, find the largest value $h$ such that $|\set{i | a_i \geq h}|\geq h$.