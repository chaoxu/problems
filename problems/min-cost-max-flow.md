---
title: Minimum Cost Maximum $s-t$ Flow
tags: Graph
---

# Problem
Let $D=(V,A)$ be a directed graph, $s,t\in V$. $c:A\to \mathbb{R}^+$ the capacity function, $w:A\to \mathbb{R}$. We want to find a function $f:A\to \mathbb{R}^+$, such that

\begin{align}
\text{Maximize:} & (\sum_{a\in \delta^+(s)} f(a) - \sum_{a\in \delta^-(s)} f(a), -\sum_{a\in A} w(a)f(a))\\
\text{subject to:} & \sum_{a\in \delta^+(v)} f(a) - \sum_{a\in \delta^-(v)} f(a)  = 0 \text{ for } v \in V\backslash\{s,t\}, \\
& f(a) \leq c(a) \text{ for } a\in A\\
\end{align}

The maximization is under lexicographical order.