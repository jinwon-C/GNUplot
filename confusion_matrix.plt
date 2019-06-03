reset
set terminal png font 'arial, 10.5'
set output 'a.png'
set autoscale
set palette defined (0 'white', 1 'green')
set xtics ('do-not' 0, 'left-right' 1, 'top-bot' 2, 'circle' 3, 'block' 4, 'right-left' 5, 'bot-top' 6, 'triangle' 7)
set ytics ('do-not' 0, 'left-right' 1, 'top-bot' 2, 'circle' 3, 'block' 4, 'right-left' 5, 'bot-top' 6, 'triangle' 7)
set yrange [7.5:-0.5]
set nokey
plot 'confusion_matrix.txt' matrix with image, '' matrix using 1:2:(sprintf('%.2f', $3))with labels
