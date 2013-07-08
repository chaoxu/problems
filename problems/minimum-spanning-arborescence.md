---
title: Minimum Spanning Arborescence
---

# Problem
Let $D=(V,A)$ be a connected graph, $r$ be a specified vertex. $w:A\to \R$. We want to find a $r$-arborescence $R$ with minimum total weight.

\begin{align}
\text{Minimize:} & \sum_{a\in R} w(a) x_a\\
\text{subject to:} & \sum_{a\in \delta^-(U)} x_a \geq 1 \text{ for } U \subseteq V\backslash \{r\} \\
& x_a \geq 0 \text{ for } a\in A \\
\end{align}

# Algorithms

http://www.dti.unimi.it/~righini/Didattica/ComplementiRicercaOperativa/MaterialeCRO/Trees.pdf