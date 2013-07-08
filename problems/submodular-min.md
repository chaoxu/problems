---
title: Submodular Minimization
---

# Problem

Let $f:2^V\to \mathbb{R}$ be a submodular function, find $S$ such that

\begin{align}
\text{Minimize:} & f(S) \\
\text{subject to:} & S\subset V \\
\end{align}

# Algorithms

## Iwata's Algorithm
- $O(n^8 \log^2 n)$ time.