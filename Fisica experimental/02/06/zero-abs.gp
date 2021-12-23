set terminal epslatex standalone size 8cm,10cm
set output "regression.tex"

set xrange[*:*]
set yrange[*:*]

set xlabel "testetektkektketktk Temperatura $(^{\\circ}C)$"
set ylabel "Pressão $(cmHg)$"


set grid mxtics mytics xtics ytics lt 1 lc rgb 'gray70', lt 1 lc rgb 'gray90'
set pointsize 2
set xtics axis
set xzeroaxis
set border 2

set style line 1 lt 1 lc "black" lw 2

#set style func linespoints
show style data

show style line
set key outside below center vertical maxrows 4 width -5
set key right top


f(x) = a*x + b


fit f(x) "data.dat" via a,b

plot "data.dat" w p pointtype 7 t "Dados experimentais" , f(x) t " Regressão linear" ls 1








