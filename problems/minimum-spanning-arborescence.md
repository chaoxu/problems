---
title: Minimum Spanning Arborescence
---

# Problem
Let $D=(V,A)$ be a connected graph of $n$ vertices and $m$ edges. $r$ be a specified vertex. $w:A\to \R$. We want to find a $r$-arborescence $R$ with minimum total weight.

\begin{align}
\text{Minimize:} & \sum_{a\in R} w(a) x_a\\
\text{subject to:} & \sum_{a\in \delta^-(U)} x_a \geq 1 \text{ for } U \subseteq V\backslash \{r\} \\
& x_a \geq 0 \text{ for } a\in A \\
\end{align}

# Algorithms

- $O(m+n\log n)$ Edmonds' algorithm with Gabow et. al.'s implementation
H. N. Gabow, Z. Galil, T. Spencer, and R. E. Tarjan, “Efficient algorithms for finding minimum spanning trees in undirected and directed graphs,” Combinatorica 6 (1986), 109-122.