---
title: Sequential Knapsack
---

# Problem

Let there be $c_i$ element of weight $w_i$ with value $v_i$, $w_i|w_{i+1}$, we want to fill a knapsack with capacity $W$, and elements with maximum value.

Solve the integer program: 

\begin{align}
\text{Maximize:} & \sum_{i=1}^n v_ix_i\\
\text{subject to:} & \sum_{i=1}^n w_ix_i \leq W \\
  & 0 \leq v_i \leq c_i
\end{align}
