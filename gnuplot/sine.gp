reset

set xrange[0:2*pi]
set yrange[-1:1]

set grid

set xtics (0, 'π/2' pi/2, 'π' pi, '3π/2' 3*pi/2, '2π' 6.28)

set ytics('-1' -1 , '0' 0, '1' 1)

f1(x,t) = sin(x-t)
f2(x,t) = cos(x-t)

set terminal gif animate delay 10 size 400,400
set output 'sinewave.gif'

set style line 1 lt 1 lc "black" lw 3
set style line 2 lt 1 lc "red" lw 3

n=96
dx = 0.1

do for[i=1:n]{
plot f2(x,i*dx) ls 1 t "cos(x + ϕ)", f1(x,i*dx) ls 2 t "sin(x + ϕ)"
}
#reread


