---
title: Stable Roommate Problem
---

# Problem
Given a graph $G=(V,E)$, for each vertex $v$, we define a total order $<_v$ on the edges incident to $v$. 

A matching $M$ is stable if there is no edge $e\not\in M$ such there is a $m\in M$, such that $e <_v m$.

Find a stable matching or decide it is not possible.

# Algorithm
Irving's algorithm uses $O(n^2)$ time when there is no multiple edges. (Is it actually a $O(m)$ time algorithm?)