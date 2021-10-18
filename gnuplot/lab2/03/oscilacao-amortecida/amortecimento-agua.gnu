
set terminal epslatex standalone size 18cm,10cm
set output "amortecimento-agua.tex"

set grid
set style line 1 lt 2 lw 2 lc "black"

set pointsize 5

set xrange [ 0 : 270 ]

f(x) = a/(x-x0) + c



set multiplot layout 1,2 rowsfirst

set xlabel "Tempo (s)"
set ylabel "Amplitude (m)"

# grafico 1

set title "a) Gráfico em escala normal"

#set yrange [ 0 : 0.20 ]

fit f(x) "amortecimento-agua.dat"  via a,c,x0

plot "amortecimento-agua.dat" t "Dados experimentais" pointtype 8 ,f(x) t " " ls 1


# grafico 2

set title "b) Gráfico em escala mono-log"

unset yrange

set grid mxtics mytics xtics ytics lt 1 lc rgb 'gray70', lt 1 lc rgb 'gray90'


set logscale y

fit f(x) "amortecimento-agua.dat"  via a,x0,c
plot "amortecimento-agua.dat" t "Dados experimentais" pointtype 8 ,f(x) t " " ls 1

unset multiplot
