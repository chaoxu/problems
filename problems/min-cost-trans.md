---
title: Minimum cost transshipment
tags: Graph
---

# Problem
Let $D=(V,A)$. $l,u,b: A\to \R^+$, $c:A\to \R$. We want to find a a flow function $f$, such that:

\begin{align}
\text{Minimize:} & \sum_{a \in A} c(a)f(a) \\
\text{subject to:} & \sum_{v\in a \in A} f(a) = b(v) \text{ for } v \in V, \\
& l(a) \leq f(a) \leq u(a) \text{ for } a\in A\\
\end{align}

# Algorithms

