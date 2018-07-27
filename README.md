# Boundary Value Problems
Numerical solutions to various boundary value problems. bvp1.m solves 

<a href="https://www.codecogs.com/eqnedit.php?latex=-u''=f,\:\:\:x\in(0,1)\:\:\:u(0)=u_a,\:\:\:u(1)=u_b" target="_blank"><img src="https://latex.codecogs.com/gif.latex?-u''=f,\:\:\:x\in(0,1)\:\:\:u(0)=u_a,\:\:\:u(1)=u_b" title="-u''=f,\:\:\:x\in(0,1)\:\:\:u(0)=u_a,\:\:\:u(1)=u_b" /></a>

while bvp2.m solves

<a href="https://www.codecogs.com/eqnedit.php?latex=-u''=f,\:\:\:x\in(0,1)\:\:\:u(0)=u_a,\:\:\:u'(1)=u_b" target="_blank"><img src="https://latex.codecogs.com/gif.latex?-u''=f,\:\:\:x\in(0,1)\:\:\:u(0)=u_a,\:\:\:u'(1)=u_b" title="-u''=f,\:\:\:x\in(0,1)\:\:\:u(0)=u_a,\:\:\:u'(1)=u_b" /></a>

We compute a grid consisting of values <a href="https://www.codecogs.com/eqnedit.php?latex=U_0,U_1,\dots,&space;U_m" target="_blank"><img src="https://latex.codecogs.com/gif.latex?U_0,U_1,\dots,&space;U_m" title="U_0,U_1,\dots, U_m" /></a> and replace <a href="https://www.codecogs.com/eqnedit.php?latex=u''" target="_blank"><img src="https://latex.codecogs.com/gif.latex?u''" title="u''" /></a> with 

<a href="https://www.codecogs.com/eqnedit.php?latex=\frac{1}{h^2}(U_{j-1}-2U_j&plus;U_{j&plus;1})" target="_blank"><img src="https://latex.codecogs.com/gif.latex?\frac{1}{h^2}(U_{j-1}-2U_j&plus;U_{j&plus;1})" title="\frac{1}{h^2}(U_{j-1}-2U_j+U_{j+1})" /></a>

to end up with a system of linear equations <a href="https://www.codecogs.com/eqnedit.php?latex=AU=F" target="_blank"><img src="https://latex.codecogs.com/gif.latex?AU=F" title="AU=F" /></a> where the matrix A is a banded matrix with 1, -2, 1 down the central band, U is the vector of unknowns and F is the righthand side function evaluated at each gridpoint. The central difference method is <a href="https://www.codecogs.com/eqnedit.php?latex=O(h^2)" target="_blank"><img src="https://latex.codecogs.com/gif.latex?O(h^2)" title="O(h^2)" /></a> accurate and stable which implies convergence to the true solution. 
