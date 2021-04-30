---
id: min-max-sum-k-partition-array
title: Partition minimize maximum sum of subarrays
parameters:
  - type: input
    name: G
    description: $G=(V,E)$ a path
inherit: [min-max-weight-component-tree]
---


# Problem 

Given an array of positive reals, partition it into $k$ contiguous subarrays, such that the maximum of the sum of each subarray is minimized.


Alternatively, one can also consider the graph interpertation.

Given $G=(V,E)$ a path, $w:V\to \R^+$ a positive vertex weight function. 
Output the set of $k$ edges to remove, such that the maximum of the sum of the weights of each component is minimized.

# Algorithm

