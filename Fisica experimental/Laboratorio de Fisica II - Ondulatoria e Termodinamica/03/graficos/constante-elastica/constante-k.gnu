set terminal epslatex standalone size 8cm,10cm
set output "constante-k.tex"

set xrange[0:0.55]
set yrange[0:0.25]

set xlabel "Deslocamento (m)"
set ylabel "Força (N)"

set size square
set grid

set bmargin 5


set style line 1 lt 1 lc "black" lw 2

set key right bottom


f(x) = a*x + b

fit f(x) "constante-k.dat" via a,b

set pointsize 5
#set bars 3
set bars small

#set title "Determinação da constante da mola"

plot "constante-k.dat" title "|mg|" pointtype 8, f(x) title "$k|\\Delta x|$" ls 1
