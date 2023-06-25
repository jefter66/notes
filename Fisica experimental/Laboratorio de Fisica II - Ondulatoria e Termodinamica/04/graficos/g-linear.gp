set terminal epslatex standalone size 8cm,10cm
set output "g-linear.tex"

set xrange[*:*]
set yrange[*:*]

set xlabel "$\\frac{n}{2L}$ $(\\frac{1}{m})$"
set ylabel "Frequência (Hz)"

set grid
set pointsize 3


set style line 1 lt 1 lc "black" lw 4
set style line 2 lt 9 lc rgb "#9400D4" lw 2

#set style func linespoints
show style data

show style line

set key right top


f(x) = a*x + b


fit f(x) "g-linear.dat" via a,b

plot "g-linear.dat" w p pointtype 7 t "" , f(x) t " Regressão linear" ls 1
