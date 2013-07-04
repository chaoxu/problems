---
title: Exact String Matching With Don't Cares
---

# Problem
Let $S$ be strings of length $n$ and $T$ be a pattern with length $m$. The pattern allow don't care characters that matches any character. Return the all $i$, such that $T$ matches a prefix of $S[i..n]$.

# Algorithms
## FFT Algorithm

- $O(n\log m)$ time.

See P. Clifford, R. Clifford, Simple deterministic wildcard matching, in: Information Processing Letters 101 (2007) 53–54