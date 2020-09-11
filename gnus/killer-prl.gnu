# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'histograms.2.png'
set term pdfcairo
set output "pdfs/killer-prl.pdf"
set boxwidth 0.9 absolute
set style fill   solid 1.00 border lt -1
set key fixed right top horizontal Right noreverse noenhanced autotitle nobox
set style histogram clustered gap 1 title textcolor lt -1
set datafile missing '-'
set style data histograms
set xtics border in scale 0,0 nomirror rotate by -45  autojustify
set xtics  norangelimit 
set xtics   ()
#set title "Comparing SATTune against SMT Solvers Hexiom\n" 
set yrange [ 0.0001 : 100000. ] noreverse nowriteback
DEBUG_TERM_HTIC = 119
DEBUG_TERM_VTIC = 119
set logscale y
set ylabel "Time - log(seconds)"
scale = 1
## Last datafile plotted: "immigration.dat"
plot 'data/killer-prl.txt' using ($2*scale):xtic(1) ti col, '' u ($3*scale) ti col, '' u ($4*scale) ti col
