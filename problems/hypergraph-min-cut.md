---
title: Hypergraph Min Cut
---

# Problem 

Let $H=(V,E)$ be a hypergraph and $w:E\to R$ a weight function, the weight of a cut induced by $S$ is

\[
w(S) = \sum \{w(e) | e\in E, e\cap S \neq \emptyset, e\cap V\backslash S \neq \emptyset\}
\]

\begin{align}
\text{Minimize:} & w(S) \\
\text{subject to:} & S\subsetneq V \\
\end{align}