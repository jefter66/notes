set terminal epslatex standalone size 12cm,8cm
set output "unidimensional-wave-example.tex"


set xrange [0:5*pi]
set yrange [-2:2]

set xtics('0' 0, \
'$\frac{\pi}{2}$' 0.5*pi,\
'$\pi$' pi,\
'$\frac{3 \pi}{2}' 1.5*pi,\
'$2\pi$ ' 2*pi,\
'$\frac{5\pi}{2}$ ' 2.5*pi,\
'$3\pi$' 3*pi,\
'$\frac{7\pi}{2}$' 3.5*pi,\
'$4\pi$' 4*pi,\
'$\frac{9\pi}{2}$' 4.5*pi,\
'$5\pi$' 5*pi)

set style line 1 lt 2 lw 4 lc "black"

set arrow 1 from 2*pi,1.5 to 3*pi,1.5


unset xtics
unset ytics 
unset grid

set style arrow 1 ls 1 

set label "Direção da propagação" at 1.5*pi,1.8 

set arrow 5 from 1.5*pi,-1 to 3.5*pi,-1 nohead

set label "Comprimento de onda $\\lambda$" at 1.5*pi,-1.2 





set style line 1 lt 2 lw 4 lc "blue"

f(x) = sin(x)

plot f(x) t ""  ls 1 
