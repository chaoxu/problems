---
id: bottleneck-k-link-path
title: Bottleneck $k$-link path
description:  such that the maximum weight of the edges in the path is minimized.
parameters:
  - type: input
    name: G
    description: $G=(V,E)$ a complete DAG with vertex ordering $v_1,\ldots,v_n$.
  - type: input
    name: w
    description: An ordered weight function $w:E\to \R$
  - type: input
    name: k
    description: $k$
  - type: output
    name: out
    description: A bottleneck shortest path consists of exactly $k$ edges in $G$ from $v_1$ to $v_n$ with weights $w$.
  - type: complexity
    name: n
    description: Number of vertices in $G$
  - type: complexity
    name: k
    description: $k\in \N$
note: See [ordered weight of complete DAG] and [Bottleneck $k$-link path](https://chaoxuprime.com/posts/2019-01-31-bottleneck-k-link-path.html).
related:
  - problem: min-max-sum-k-partition-array
    relation: reduction
    description: When the weight of edge $w(i,j)$ is sum of elements from $i$th to $j-1$th.
---

# Problem

Given a complete DAG $G$ with vertex ordering $v_1,\ldots,v_n$, a ordered weight function $w:E\to \R$.
Output a bottleneck shortest path consists of exactly $k$ edges in $G$ from $v_1$ to $v_n$ with weights $w$.

# Algorithms
See [ordered weight of complete DAG] and [Bottleneck $k$-link path](https://chaoxuprime.com/posts/2019-01-31-bottleneck-k-link-path.html).