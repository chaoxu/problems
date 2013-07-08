---
title: Minimum Spanning Tree
---

# Problem
Let $G=(V,E)$ be a connected graph, $w:E\to M$, where $M$ is a ordered monoid. We want to find a spanning tree $T$ with minimum total weight. 

\begin{align}
\text{Minimize:} & \sum_{e\in T} w(a) x_e\\
\text{subject to:} & \sum_{v\in U} \sum_{v\in e} x_a \geq 1 \text{ for } \emptyset \neq U \subseteq V \\
& x_e \geq 0 \text{ for } e\in E \\
\end{align}

# Algorithms
## Prim's Algorithm