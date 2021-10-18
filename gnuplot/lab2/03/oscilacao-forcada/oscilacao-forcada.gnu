set terminal epslatex standalone size 10cm,10cm
set output "oscilacao-forcada.tex"

set pointsize 5
set grid

set xrange[0.2:0.9]
set yrange[0:20]

set xlabel "Frequência (Hz)"
set ylabel "Amplitude (cm)"


set style line 3 lt 2 lw 2 lc "yellow"


plot  "forcada-ar.dat" t "Ar" w l lt 2 lw 5 lc "black", "forcada-agua.dat" t "Água" w l lt 2 lw 5 lc "blue"