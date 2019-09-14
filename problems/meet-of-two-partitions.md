---
title: Meet of two partitions
parameters:
  - type: input
    name: partitions
    description: $\mathcal{A}$ and $\mathcal{B}$ partitions of $[n]$.
  - type: output
    name: meet
    description: The meet of $\mathcal{A}$ and $\mathcal{B}$, $\mathcal{C}=\set{A\cap B \mid A\in \mathcal{A}, B\in \mathcal{B}}$.
  - type: complexity
    name: n
    description: The size of the universe.
algorithms: [meet-two-partitions-1,meet-two-partitions-2]
---

# Problem 

Given $\mathcal{A}$ and $\mathcal{B}$ partitions of $[n]$, find the meet of $\mathcal{A}$ and $\mathcal{B}$, $\mathcal{C}=\set{A\cap B \mid A\in \mathcal{A}, B\in \mathcal{B}}$.