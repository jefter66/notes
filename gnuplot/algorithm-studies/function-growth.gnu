#set term  epslatex size 10cm, 10cm
#set output "function-growth.tex"
set title "Crescimento de funções"


set xrange[0:100]
set yrange[0:1000]


set style line 1 lt 1 lc "red" lw 3
set style line 2 lt 1 lc "blue" lw 3
set style line 3 lt 1 lc "yellow" lw 3
set style line 4 lt 1 lc "black" lw 3
set style line 5 lt 1 lc "red" lw 3
set style line 6 lt 1 lc "green" lw 3

plot 1 title 'constante' ls 1, \
 x title 'linear' ls 2, \
log(x) title 'logaritmico' ls 3 , \
 x**2 title 'quadrado' ls 4, \
x**3 title 'cubo' ls 5,\
 exp(x) title 'exponencial' ls 6


