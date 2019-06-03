reset
#set yrange [0.95:]
set palette grey
set terminal png
set output 'window_accuracy.png'
#set xtics ('4' 0, '5' 1, '6' 2, '7' 3, '8' 4,)
set xrange [1500:8500]
#set boxwidth 0.3
set boxwidth 300
set xlabel 'Window Size'
set ylabel 'Accuracy' 
set style fill pattern 2
set nokey
set size 0.8, 0.8
plot 'window_accuracy.txt' with boxes lc rgbcolor 'black'
