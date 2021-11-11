set terminal epslatex standalone size 12cm,8cm
set output "stationary-wave-example.tex"
set yrange[-2.5:2.5]
set xrange[0:5*pi]

set xtics('0' 0, \
'$\frac{\pi}{2}$' 0.5*pi,\
'$\pi$' pi,\
'$\frac{3 \pi}{2}' 1.5*pi,\
'$2\pi$ ' 2*pi,\
'$\frac{5\pi}{2}$ ' 2.5*pi,\
'$3\pi$' 3*pi,\
'$\frac{7\pi}{2}$' 3.5*pi,\
'$4\pi$' 4*pi,\
'$\frac{9\pi}{2}$' 4.5*pi,\
'$5\pi$' 5*pi)


set grid

set style line 1 lt 2 lw 4 lc "black"
set style line 2 lt 2 lw 4 lc "red"
set style line 3 lt 2 lw 4 lc "blue"
set style line 4 lt 2 lw 4 lc "#67B01F"

set key right center out
set key box lt -1 lw 2
set key spacing 1.5
set key box width -3

f(x) = sin(x)

plot f(x)*0.5 ls 1 t "$\\frac{1}{2}\\cdot sen(x)$", f(x) ls 2 t "$1 \\cdot sen(x)$", 1.5*f(x) t "$\\frac{3}{2} \\cdot sen(x)$" ls 3 , 2*f(x) t "$2\\cdot sen(x)$" ls 4