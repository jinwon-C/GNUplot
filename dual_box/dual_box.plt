reset
set terminal png
set output 'dual_box.png'
set style line 2 lc rgb 'black' lt 1 lw 1
set style data histogram
set yrange[50:100]
set xtics ('DT' 0, 'K-n' 1, 'RF' 2, 'Ridge' 3)
set boxwidth 1
set style histogram cluster gap 1
set xlabel 'Algorithm'
set ylabel 'Accuracy' 
set style fill pattern 2
#set nokey
set size 0.8, 0.8
plot 'dual_box.txt' using 2 title 'CV' ls 2, \
'' using 3 title 'TF-IDF' ls 2
