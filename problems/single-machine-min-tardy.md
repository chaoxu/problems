---
title: Single Machine Minimum Tardy Jobs
---
# Problem
The $j$th job takes $p_j$ time. There exist due date $d_j$ for the $j$th job. Let $C_j$ is the completion time of the $j$th job. $U_j=0$ if $C_j\leq d_j$, otherwise $U_j=1$. Find a scheule that minimizes $\sum_{j=1}^n U_j$.


# Algorithms
$O(n\log n)$ algorithm exists.