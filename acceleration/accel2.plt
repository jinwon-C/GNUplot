reset
set datafile separator ","
set terminal png
set output '3.png'
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%.3S"
set xtics rotate by 90 offset 0,-2 out nomirror
#set xrange[0:100]
#set yrange[-2:2]
set xlabel 'Time'
set ylabel 'Acceleration'
set size 0.9,0.9
plot "3_52.csv" using 2:3 with line title "x",\
"" u 2:4 w line t "y",\
"" u 2:5 w line t "z"

#"" u 12:3 w line t "on phone"

#"" u 12:4 w line t "y",\
#"" u 12:5 w line t "z",\
#"" u 2:3 w line t "x_2",\
#"" u 2:4 w line t "y_2",\
#"" u 2:5 w line t "z_2"
