reset 
set terminal png
set output 'openmax.png'
set xlabel 'Threshold'
set ylabel 'Accuracy'
#set key ins vert right top
set key at 0.88, 0.96
set style fill pattern 2
#set size 0.8
plot 'openmax.txt' using 1:2 title 'softmax' with lp pt 4,\
'openmax.txt' using 1:3 title 'openmax' with lp pt 5
