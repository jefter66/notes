#set key bmargin center horizontal Right noreverse enhanced autotitle nobox
set title "TITLE"
set xlabel " "
set ylabel " "

set grid
set pointsize 5

myencoding = "utf8"

set format y "10^{%L}"
set format x "10^{%L}"

##########
set xrange [0.050:1] noextend
set yrange [*:1.0]

set log x
set log y

set xtics log
set ytics nolog

f(x) = a*x**n

##################

#set nonlinear x via log10(x) inverse 10**x
#set nonlinear y via log10(y) inverse 10**y


fit f(x) "logscale.dat" via a,n
plot "logscale.dat" pointtype 8, f(x) with lines lt rgb "#ff00ff"
