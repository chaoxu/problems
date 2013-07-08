---
title: Path Sums
---

# Problem 

## Preprocess
$T=(V,E)$ is a tree with weight function $w:E\to M$, where $(M,+)$ is a monoid.

## Queries
 - $sum(s,t)$ find the weight of the unique $s-t$ path.
 - $add(s,t,a)$ change the weight function, such that all edges on the $s-t$ path are added with element $a$. 

# Algorithm

Parameters: $n=|V|$.