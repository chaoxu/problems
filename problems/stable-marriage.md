---
title: Stable Marriage Problem
---

# Problem
Given a bipartite multigraph $G=(V,E)$, for each vertex $v$, we define a total order $<_v$ on the edges incident to $v$. 

A matching $M$ is stable if there is no edge $e\not\in M$ such there is a $m\in M$, such that $e <_v m$.

Find a stable matching.

# Algorithm
Gale–Shapley algorithm uses $O(m)$ time. 