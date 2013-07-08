---
title: All-Pair Shortest Path
---

# Problem 

## Preprocess
A graph $G=(V,E)$ and $w:E\to \mathbb{R}$, a conservative weight function. 

## Queries
 - $d(s,t)$ returns the distance between $s,t\in V$. 
 - $S(s,t)$ returns the the shortest path between $s,t\in V$. 

# Algorithm

Parameters: $n=|V|, m=|E|$

## Floyd–Warshall algorithm
- $O(n^3)$ preprocess time.
- $O(n^2)$ space.
- $O(1)$ $d(s,t)$ query time.
- $O(d(s,t))$ $S(s,t)$ query time.

## Johnson's algorithm
- $O(n^2\log n +nm)$ preprocess time.
- $O(n^2)$ space.
- $O(1)$ $d(s,t)$ query time.
- $O(d(s,t))$ $S(s,t)$ query time.