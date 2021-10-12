set title "TITLE"
set xlabel " "
set ylabel " "

set xrange [ * : * ]
set yrange [ * : * ]


#NO_ANIMATION = 1
#myencoding = "utf8"

#set fit nologfile brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
#set grid


##  Compiling to .tex file ##
#set terminal epslatex size 10cm,10cm
#set output "out.tex"
#set bmargin 5

set pointsize 5

f(x) = b + a*x

fit f(x) "exp1.dat" via a, b

plot "exp1.dat" pointtype 1 notitle , \
f(x)  title "f(x) = ax + b"
