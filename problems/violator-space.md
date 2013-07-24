---
title: Violator Space Programming
---

# Problem

Let $H$ be a finite set and $V:2^H\to 2^H$ such that 

- Consistency: $G\cap V(G) = \emptyset$ for all $G\subset H$. 
- Locality: for all $F\subset G\subset H$, where $G\cap V(F) = \emptyset$, we have $V(G)=V(F)$.

We want to find a minimal $G$ such that $V(G) = V(H)$.


# Reference
http://arxiv.org/pdf/cs/0606087v3.pdf