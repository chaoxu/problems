---
title: Maximum $s-t$-flow with Integer Weights
---

# Problem
Let $D=(V,A)$ be a directed graph, $s,t\in V$. $c:A\to \mathbb{N}$ the capacity function, we want to find a function $f:A\to \mathbb{N}$, such that

\begin{align}
\text{Maximize:} & \sum_{a\in \delta^+(s)} f(a) - \sum_{a\in \delta^-(s)} f(a)\\
\text{subject to:} & \sum_{a\in \delta^+(v)} f(a) - \sum_{a\in \delta^-(v)} f(a)  = 0 \text{ for } v \in V\backslash\{s,t\}, \\
& f(a) \leq c(a) \text{ for } a\in A\\
\end{align}

# Algorithms

Parameters: $n=|V|,m=|A|,M=\max{c}$.

## Ford–Fulkerson algorithm
- $O(Mm)$ time.

## Binary blocking flow algorithm
- $O(m\min(n^{2/3},\sqrt{m})\log(n^2/m)\log M)$ time.