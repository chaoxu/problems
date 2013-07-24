---
title: Single Machine Total Weighted Completion Time
---
# Problem
Order the sequence of jobs with processing time $p_j$ and weight $w_j$, such that if $C_j$ is the completion time of the $j$th job, then $\sum w_jC_j$ is minimized.

Formally, 
\begin{align}
\text{Minimize:} & \sum_{j=1}^n w_{\pi(j)}(\sum_{i=1}^j p_{\pi(i)}\\
\text{subject to:} & \pi \text{ is a permutation} \\
\end{align}

# Algorithms
Weighted Shortest Processing Time first rule.