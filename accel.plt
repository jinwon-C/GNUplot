reset
set datafile separator ","
set terminal png
set output 'accel.png'
set xrange[0:200]
set xlabel 'Number of data'
set ylabel 'Acceleration'
set size 0.9,0.9
plot "accel.csv" using 0:3 with line title "x",\
"" u 0:4 w line t "y",\
"" u 0:5 w line t "z"
