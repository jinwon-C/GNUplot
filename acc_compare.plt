reset 
set nokey
set terminal png
set output 'a.png'
set style fill solid
set boxwidth 0.2
set xlabel 'Model'
set ylabel 'Accuracy'
set yrange[:1]
set xtics ('Decision Tree' 0, 'KNN' 1, 'SVM' 2, 'Random Forest' 3, 'Ensemble' 4, 'CNN' 5)
plot 'acc_compare.txt' with boxes
