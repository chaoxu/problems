---
title: Shortest odd conservative weighted path between two vertices
tags: Graph
---

# Problem
Let $D=(V,A)$ be a simple directed graph, and $w:E \to S$ be a conservative weight function(no negative cycles), where $S$ is an ordered semigroup. Find a shortest path between $s,t\in V$ with minimum weight.

# Algorithms

## Bellman–Ford algorithm

- $O(mn)$ time.
- $O(n)$ space. 