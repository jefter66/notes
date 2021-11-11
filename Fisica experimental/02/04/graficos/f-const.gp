set terminal epslatex standalone size 10cm,10cm
set output "f-const.tex"

set xrange[*:*] noextend #noreverse writeback
set yrange[*:*] noextend #noreverse writeback

set xtics ("0" 0, "0.25" 0.00025,"0.5" 0.0005,"0.75" 0.00075,"1.0" 0.001,"1.25" 0.00125, "1.50" 0.00150)


set xlabel "$\\frac{n}{2f} \\cdot 10^{-3} $ (Hz)"
set ylabel "Comprimento (m)"


set size square

set grid

set bmargin 1


set style line 1 lt 1 lc "black" lw 2

set key right top 


f(x) = a*x + b
b = 94.81

set pointsize 3

#fit f(x) "f-const.dat" via a,b
fit [0.00025:0.00125][0.078:0.426] f(x) "f-const.dat" via a,b

plot "f-const.dat" t "" pointtype 7, f(x) t " Regressão linear " ls 1

