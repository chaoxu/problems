---
title: Symmetric Submodular Function Minimization Under Hereditary Family Constraints
---

# Problem 

Let $f:2^V\to \mathbb{R}$ be a symmetric submodular function, and $\mathcal{I}$ a hereditary family of sets over $V$.

\begin{align}
\text{Minimize:} & f(S) \\
\text{subject to:} & \emptyset \neq S\in \mathcal{I}\\
\end{align}

# Algorithms

## Goemans and Soto
- $O(n^3)$ value oracle calls.

# References

@article{DBLP:journals/corr/abs-1007-2140,
  author    = {Michel X. Goemans and
               Jos{\'e} A. Soto},
  title     = {Symmetric Submodular Function Minimization Under Hereditary
               Family Constraints},
  journal   = {CoRR},
  volume    = {abs/1007.2140},
  year      = {2010},
  ee        = {http://arxiv.org/abs/1007.2140},
  bibsource = {DBLP, http://dblp.uni-trier.de}
}