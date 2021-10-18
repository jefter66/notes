set terminal epslatex standalone size 8cm,8cm
set output "exemplo-amortecimento.tex"

set grid

set style line 1 lt 2 lw 2 lc "black"
set style line 2 lt 2 lw 2 lc "red"
set style line 3 lt 2 lw 2 lc "blue"


f(x) = exp(-x/2)*cos(4*x)
g(x) = exp(-3*x/2)*cos(x)
h(x) = exp(-x*2/3)*cos(x/3)
plot [0:10] f(x) t 'Sub-crítico'  ls 1 ,g(x) t 'Crítico'  ls 2, h(x) t 'Super-crítico'ls 3


