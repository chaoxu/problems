---
title: Multiple Machine Makespan with Preemptions
---
# Problem

\begin{align}
\text{Minimize:} & C_{max}\\
\text{subject to:} & \sum_{i=1}^m x_{ij} = p_j \text{ for } 1 \leq j\leq n\\
 & \sum_{i=1}^m x_{ij} \leq C_{max} \text{ for } 1 \leq j\leq n\\\
 & \sum_{j=1}^n x_{ij} \leq C_{max} \text{ for } 1 \leq i\leq m\\\
 & x_{ij} \geq 0 \text{ for }1 \leq i\leq m, 1 \leq j\leq n\\
\end{align}