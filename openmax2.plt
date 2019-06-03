reset 
set terminal png
set output 'openmax2.png'
set xlabel 'Threshold'
set ylabel 'Accuracy'
set style fill pattern 2
plot 'openmax.txt' using 1:4 title 'softmax' with lp pt 4,\
'openmax.txt' using 1:5 title 'openmax' with lp pt 5
