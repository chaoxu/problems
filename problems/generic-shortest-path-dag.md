---
title: Generic Shortest Path for DAGs
---

# Problem
Let $D=(V,A)$ be a DAG with weight $w:A\to S$, where $(S,\oplus,\otimes,\bar{0},\bar{1})$ is a semiring, $s$ be a given vertex. $P(v)$ be the set of all one way paths from $s$ to $v$. 

Find 
\[
\delta(v) = \bigoplus_{\pi \in P(v)} \bigotimes_{a \in \pi} w(a)
\] 
for each $v$. 

# Algorithms
Parameters: $n=|V|$, $m=|A|$, $M$ is the maximum time required to preform semiring operations.

## Viterbi Algorithm
- $O(M(m+n))$ time.