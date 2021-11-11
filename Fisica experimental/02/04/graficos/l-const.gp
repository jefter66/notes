set terminal epslatex standalone size 8cm,10cm
set output "l-const.tex"

set xrange[*:*] noreverse writeback
set yrange[*:*] noreverse writeback

set xlabel "$\\frac{n}{2L}$ $(\\frac{1}{m})$"
set ylabel "Frequência (Hz)"

set size square
set grid

set bmargin 2


set style line 1 lt 1 lc "black" lw 2

set key right top 


f(x) = a*x + b
a = 310.015


set pointsize 3


fit f(x) "l-const.dat" via a,b
plot "l-const.dat" t ""  pointtype 7, f(x) t  " Regressão linear " ls 1
