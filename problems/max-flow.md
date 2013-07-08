---
title: Maximum $s-t$ flow
tags: Graph
---

# Problem
Let $D=(V,A)$ be a directed graph, $s,t\in V$. $c:A\to \mathbb{R}^+$ the capacity function, we want to find a function $f:A\to \mathbb{R}^+$, such that

\begin{align}
\text{Maximize:} & \sum_{a\in \delta^+(s)} f(a) - \sum_{a\in \delta^-(s)} f(a)\\
\text{subject to:} & \sum_{a\in \delta^+(v)} f(a) - \sum_{a\in \delta^-(v)} f(a)  = 0 \text{ for } v \in V\backslash\{s,t\}, \\
& f(a) \leq c(a) \text{ for } a\in A\\
\end{align}

# Algorithms
## Orlin's algorithm 
- $O(mn)$ time.