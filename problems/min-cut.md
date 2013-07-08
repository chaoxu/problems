---
title: Global Minimum Cut
---

# Problem
Let $G=(V,E)$ be a graph and weight function $w:E\to \mathbb{R^+}$, find the cut of minimum weight

# Algorithms

Parameters: $n=|V|,m=|E|$.

## Nagamochi and Ibaraki's Algorithm using maximum adjacency ordering
- $O(mn+n^2 \log n)$