# Matrix representation in LaTeX

$$
    \mathbf{E}_{jk}(c) = \begin{pmatrix}
    1 & & \\
    & \ddots & \\
    & & 1 & \\
    & & & \ddots & \\
    & & c & & 1 & \\
    & & & & & \ddots & \\
    & & & & & & 1
    \end{pmatrix} = \mathbf{I} + c \mathbf{e}_j \mathbf{e}_k^T.
$$

$$
    \mathbf{E}_{jk}(c) \times \mathbf{X} = \mathbf{E}_{jk}(c) \times \begin{pmatrix}
    & & \\
    \cdots & \mathbf{x}_{k\cdot} & \cdots \\
    & & \\
    \cdots & \mathbf{x}_{j\cdot} & \cdots \\
    & & 
    \end{pmatrix} = \begin{pmatrix}
    & & \\
    \cdots & \mathbf{x}_{k\cdot} & \cdots \\
    & & \\
    \cdots & c \mathbf{x}_{k\cdot} + \mathbf{x}_{j\cdot} & \cdots \\
    & & 
    \end{pmatrix}.
$$

$$
    \left[\begin{array}{cccc|c}
   a_{11}&a_{12}&\cdots &a_{1n}&b_1\\
   a_{21}&a_{22}&\cdots &a_{2n}&b_2\\
   \vdots & &\ddots &\vdots &\vdots\\
   a_{n1}&a_{n2}&\cdots &a_{nn}&b_n\\
   \end{array}\right]
$$

$$
    \bigg[\begin{array}{c|c|c|c}
   A &Ab &\cdots &A^{n-1}b
   \end{array}\bigg]
$$
$$
    \mathbf{M}_1 = \mathbf{E}_{n1}(c_{n1}) \cdots \mathbf{E}_{31}(c_{31}) \mathbf{E}_{21}(c_{21}) = \begin{pmatrix}
    1 & \\
    c_{21} & \\
    & \ddots & \\
    c_{n1} & & 1
    \end{pmatrix}
$$  
$$
	\mathbf{M}_k = \mathbf{E}_{nk}(c_{nk}) \cdots \mathbf{E}_{k+1,k}(c_{k+1,k}) = \begin{pmatrix}
	1 & \\
	& \ddots \\
	& & 1 & \\
	& & c_{k+1,k} & 1\\
	& & \vdots & & \ddots \\
	& &  c_{n,k} & & & 1
	\end{pmatrix}
$$
$$
\begin{pmatrix}  
	1 & & & & \\
	- c_{21} & \ddots & & & \\
	& & 1 & & \\
	- c_{k+1,1} & & - c_{k+1,k} & & \\
	& & \vdots & & \ddots \\
	- c_{n1} & & - c_{nk} & & & 1
\end{pmatrix}
$$

$$
A= 
\begin{bmatrix}
a_{11} & \mathbf{a}^T \\ \mathbf{a} & \mathbf{A}_{22}
\end{bmatrix} 
= LL^{T}=
\begin{bmatrix}
	\ell_{11} & \mathbf{0}_{n-1}^T \\ \mathbf{b} & \mathbf{L}_{22}
\end{bmatrix}
\begin{bmatrix}
	\ell_{11} & \mathbf{b}^T \\ \mathbf{0}_{n-1} & \mathbf{L}_{22}^T
\end{bmatrix}
$$  

$$
    \mathbf{x}_k = r_{kk} \mathbf{q}_k +  \sum_{j=1}^{k-1} r_{jk} \cdot \mathbf{q}_j=[\mathbf{q}_1\, |\,\cdots\,|\mathbf{q}_p]\begin{bmatrix} r_{1k} \\  \vdots \\ r_{kk} \\ - \\ \mathbf{0} \end{bmatrix} = \mathbf{Q}\mathbf{r}_k
    
$$  

$$
\begin{bmatrix} 
\times & \times & \times & \times \\ 
0 & \mathbf{\times} & \mathbf{\times} & \mathbf{\times}  \\
0 & \mathbf{0} & \mathbf{\times} & \mathbf{\times}  \\
0 & \mathbf{0} & \mathbf{\times} & \mathbf{\times}  \\
0 & \mathbf{0} & \mathbf{\times} & \mathbf{\times} 
\end{bmatrix} 
$$
$$
	\mathbf{H}_j = \begin{bmatrix}
	\mathbf{I}_{j-1} & \\
	& \mathbf{I}_{n-j+1} - 2 {\tilde u}_j {\tilde u}_j^T
	\end{bmatrix} = \begin{bmatrix}
	\mathbf{I}_{j-1} & \\
	& {\tilde H}_{j}
	\end{bmatrix}.
$$
$$
     \mathbf{u}_j = \begin{bmatrix} \mathbf{0}_{j-1} \\ {\tilde u}_j \end{bmatrix}, \quad {\tilde u}_j \in \mathbb{R}^{n-j+1},
$$