---
title: Optimization on Incidence Matrix(undirected)
---

# Problem

$M$ is a incidence matrix of a undirected graph. 
\begin{align}
\text{maximize}   & \mathbf{w}^\mathrm{T} \mathbf{x}\\
\text{subject to} & \mathbf{a} \leq M \mathbf{x} \leq \mathbf{b} \\
\text{and} & \ \mathbf{d} \leq  \mathbf{x} \leq \mathbf{c}
\end{align}