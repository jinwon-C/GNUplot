reset
#set yrange [0.95:]
set terminal png
set font ',20'
set output 'act_accuracy.png'
set palette grey
set xtics ('4' 0, '5' 1, '6' 2, '7' 3, '8' 4,)
set boxwidth 0.3
set xlabel 'Number of Hand Gestures'
set ylabel 'Accuracy' 
set style fill pattern 2
set nokey
set size 0.6, 0.8
plot 'act_accuracy.txt' with boxes lc rgbcolor 'black'
