set terminal epslatex standalone size 18cm,10cm
set output "amortecimento-ar.tex"

set multiplot layout 1,2 rowsfirst

set pointsize 5

f(x) =  a*exp(-b*x)
b=0.001

set grid
set style line 1 lt 2 lw 2 lc "black"

set xlabel "Tempo (s)"
set ylabel "Deslocamento $\\Delta L$ (m)"

# grafico 1
set title "a) Gráfico em escala normal"

set yrange [ 0 : 0.21 ]

set xlabel "Tempo (s)"
set ylabel "Deslocamento $\\Delta L$ (m)"

fit f(x) "amortecimento-ar.dat" using 1:2 via a, b
plot "amortecimento-ar.dat" t "Dados experimentais" pointtype 8,f(x) t "$A\\cdot e^{cx}$" ls 1

# grafico 2

set title "b) Gráfico linearizado"

set grid mxtics mytics xtics ytics lt 1 lc rgb 'gray70', lt 1 lc rgb 'gray90'

unset yrange

set logscale y

fit f(x) "amortecimento-ar.dat" using 1:2 via a, b
plot "amortecimento-ar.dat" t "Dados experimentais" pointtype 8,f(x) t "\n Modelo matemático com \n $\\gamma = ( 6,1 \\pm  0,2 )\\cdot 10^{-4}$" ls 1

unset multiplot
