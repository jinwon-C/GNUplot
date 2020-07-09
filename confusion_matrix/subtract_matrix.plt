reset
set terminal png
set output 'concat-aud.png'
set size 1, 0.9
set palette defined (-1 'red', 0 'white', 1 'blue')
set cbrang[-1:1]
set cbtics
set noxtics
set x2tics ('P1' 0, 'P2' 1, 'P3' 2, 'P4' 3, 'P5' 4, 'P6' 5, 'P7' 6, 'P8' 7, 'P9' 8, 'P10' 9)
set ytics ('P1' 0, 'P2' 1, 'P3' 2, 'P4' 3, 'P5' 4, 'P6' 5, 'P7' 6, 'P8' 7, 'P9' 8, 'P10' 9)
set yrange [9.5:-0.5]
set nokey
plot 'concat-aud.txt' matrix with image, '' matrix using 1:2:(sprintf('%.2f', $3))with labels
