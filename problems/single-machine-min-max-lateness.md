---
title: Single Machine Maximum Lateness
---
# Problem
The $j$th job takes $p_j$ time. There is a graph $D(V,A)$ where $V=\{1,\ldots,n\}$. If $(i,j)\in A$, then $j$th job require $i$th job to finish first. Let $h_1,\ldots,h_n$ be non-decreasing functions. Let $C_j$ is the completion time of the $j$th job. Let $h_{\max} = \max(h_1(C_1),\ldots,h_n(C_n))$. Find a schedule that minimizes $h_{\max}$.


# Algorithms
$O(n^2)$ DP algorithm exists.