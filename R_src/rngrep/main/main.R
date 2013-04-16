source('../rngrep.R')
x=data.frame(x=1:3, row.names=letters[1:3])
rngrep(x, 'a')
