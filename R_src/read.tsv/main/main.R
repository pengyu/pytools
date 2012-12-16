source('../read.tsv.R')
f=read.tsv(pipe('printf "%s\t%s\n" "x 1" "y 1" 1 2 3 a b c'))
str(f)

f=read.table(pipe('printf "%s\t%s\n" "x" "y"; printf "%s\t%s\t%s\n" a b c'), col.names=F)
str(f)

