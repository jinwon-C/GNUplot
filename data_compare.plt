reset
set terminal png
set output 'a.png'
set xtics ('Raw' 0, 'STFT' 0.5 )
set boxwidth 0.2
set xlabel ''
set ylabel 'Accuracy'
set yrange [0:1]
set ytics 0, 0.1, 1
set style fill pattern 3
set nokey
set size 0.9
plot 'data_compare.txt' with boxes
