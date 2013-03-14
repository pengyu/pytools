f=read.csv(pipe('printf "%s,%s\n" "a b" "x y" 1 2 3 a b c'))
str(f)
source('../read.csv.R')
f=read.csv(pipe('printf "%s,%s\n" "a b" "x y" 1 2 3 a b c'))
str(f)

