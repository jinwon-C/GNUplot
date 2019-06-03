reset
#set yrange [0.95:]
set terminal png
set output 'a.png'
set palette grey
set xtics ('DT' 0, 'RF' 1, 'SVM' 2, 'CNN' 3)
set boxwidth 0.3
set xlabel 'Algorithm'
set ylabel 'Accuracy' 
set style fill pattern 2
set nokey
set size 0.6, 0.8
plot 'algo_accuracy.txt' with boxes lc rgbcolor 'black'
