---
title: Dynamic Prefix Sum
---

# Problem 

## Preprocess
A string $a_1,\ldots, a_n$ with alphabets from a monoid $(M,+)$. 

## Queries
 - $insert(s,i)$ insert a monoid element into the ith position. 
 - $delete(s,i)$ delete a monoid element from the ith position.
 - $sum(j,k)$ return $\sum_{i=j}^k a_k$.

# Algorithm

Parameters: $n$ is the length of the string.