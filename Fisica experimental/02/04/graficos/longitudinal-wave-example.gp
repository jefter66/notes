set terminal epslatex standalone size 12cm,8cm
set output "longitudinal-wave-example.tex"


set xrange [0:5*pi]
set yrange [-2:2]

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

set arrow 1 from 1.2*pi,1.5  to 0.5*pi, 1
set arrow 2 from 1.5*pi,1.5  to 2.5*pi, 1

set arrow 3 from 2.25*pi,-1.6  to 1.5*pi, -1
set arrow 4 from 2.5*pi,-1.6  to 3.5*pi, -1

set label "Pontos de compressão " at 0.5*pi,1.8 
set label "Pontos de reflexão " at 1.5*pi,-1.8 


#set xlabel "Distância"
#set ylabel "Densidade"

unset xtics
unset ytics 
unset grid

set style arrow 1 ls 1 



set style line 1 lt 2 lw 4 lc "blue"

f(x) = sin(x)

plot f(x) t ""  ls 1 
