---
title: Submodular Flow
---

# Problem

Let $D=(V,A)$ be a directed graph, $l,u:A\to \mathbb{R}$, $c:A\to \mathbb{Z}$, $\mathcal{F}$ a crossing family on $V$, submodular $f:\mathcal{F}\to \mathbb{R}$, $f(\emptyset)=f(V)=0$, $B(f)$ the base polyhedron of $f$.

Let $\partial \phi(v) = \sum_{a\in \delta^+(v)} \phi(a) -  \sum_{a\in \delta^-(v)} \phi a$. We want to find function $\phi: A\to R$, such that it 
\begin{align}
\text{Minimize}   & \sum_{a\in A} c(a) \phi(a) \\
\text{subject to} & l(a) \leq \phi(a) \leq u(a) \text{ for } a\in A\\
 & \partial \phi \in B(f)
\end{align} 



# Reference
The definition is from 
@ARTICLE{Iwata99afast,
    author = {Satoru Iwata and S. Thomas McCormick and Maiko Shigeno},
    title = {A fast cost scaling algorithm for submodular flow},
    journal = {INFORM. PROCESS. LETT},
    year = {1999},
    volume = {74},
    pages = {123--128}
}
