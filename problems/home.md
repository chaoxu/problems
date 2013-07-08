---
title: Problem Repository
---

This suppose to be a website that features the relation between common problems and algorithms for solving them.

The website is very therotical in nature, in fact it tries to be as general as possible in the formulations. For example, instead of asking for the shortest path on graphs with real weight, we ask graphs with weights from a ordered monoid. Only then, when one has time, one might add the shortest path in some more concrete ordered monoids, say the integers...

The site tries to not feature NP-complete problems, unless it is a must.

There is an directed solid edge from A to B, if B can be solved by restricting the input of A.

The following are not implemented but can be made possible in the future...
- A dashed directed edge from A to B if B can be linearly reduced to A. i.e. Permute the input of B in $O(n)$ time, and feed it to problem A. 
- There is a dashed edge between A to B if both problems are linearly reducable. 
- Add data structure problems, which would be featured quite differently. 

The source is hosted on [github](https://github.com/Mgccl/problems).