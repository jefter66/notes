set terminal epslatex standalone size 10cm, 10cm
set output "big-o-notation.tex"
set title "Notação Big O"
set format y ""
set format x ""
#set tics scale 0



set xrange[0:100]
set yrange[0:1000]


set style line 1 lt 1 lc "red" lw 3

set style line 2 lt 1 lc "blue" lw 3
set style line 3 lt 1 lc "yellow" lw 3
set style line 4 lt 1 lc "black" lw 3

plot 100 title 'O(1)' ls 1, \
 x*10 title 'O(n)' ls 2, \
100*log(x) title 'O(log n)' ls 3 , \
 x**2 title 'O(n²)' ls 4
