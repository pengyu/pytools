source('../read.uneven.tsv.R')
system("(
  printf '%s\n' x1;
  printf '%s\t%s\n' y1 y2;
  printf '%s\t%s\t%s\n' z1 z2 z3;
  )>main.txt
")
system('gzip < main.txt > main.txt.gz')
file='main.txt'
read.uneven.tsv(file)
read.uneven.tsv(file, col.names=paste0('X', 1:3, sep=''))
read.uneven.tsv('main.txt.gz')
