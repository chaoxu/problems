---
title: Matroid Intersection
---

# Problem

Matroids $M_1,M_2=(E, \mathcal{I_1}),(E, \mathcal{I_2})$ with cost function $c:E\to \mathbb{R}$, find $S$ such that

\begin{align}
\text{Maximize:} & \sum_{e\in S} c(e) \\
\text{subject to:} & S\in \mathcal{I_1} \\
 & S\in \mathcal{I_2}
\end{align}