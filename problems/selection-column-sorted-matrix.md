---
title: Selection in column sorted matrix
---

# Problem
$A$ is a $n\times m$ matrix where each column are sorted. Find the $k$th largest element in the matrix.

# Algorithms

- $O(m+p\log(k/p))$ time, where $p=\min\{k,m\}$. "The complexity of selection and ranking in X + Y and matrices with sorted columns" Frederickson, Greg N. Johnson, Donald B.