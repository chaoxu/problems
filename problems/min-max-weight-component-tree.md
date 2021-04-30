---
id: min-max-weight-component-tree
title: Minimize maximum weight component
parameters:
  - type: input
    name: G
    description: $G=(V,E)$ a tree
  - type: input
    name: w
    description: a positive vertex weight function $w:V\to \R^+$
  - type: input
    name: k
    description: $k\in \N$
  - type: output
    name: out
    description: The set of $k$ edges to remove, such that the maximum of the sum of the weights of each component is minimized.
  - type: complexity
    name: n
    description: the number of vertices in the input
  - type: complexity
    name: k
    description: $k$
---

# Problem 

Given $G=(V,E)$ a tree, $w:V\to \R^+$ a positive vertex weight function. 
Output the set of $k$ edges to remove, such that the maximum of the sum of the weights of each component is minimized.

