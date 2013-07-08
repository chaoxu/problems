---
title: Edge Connectivity
---

# Problem
Let $G=(V,E)$ be a graph, find $\lambda(G)$.  

# Algorithms

Parameters: $n=|V|,m=|E|,\lambda = \lambda(G)$.

## Nagamochi and Ibaraki's Algorithm using maximum adjacency ordering
- $O(mn)$ time.

## Gabow's Algorithm using Matroids
- $O(m+\lambda^2 n \log(\frac{n}{\lambda}))$ time.