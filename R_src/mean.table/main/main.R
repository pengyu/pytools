source('../mean.table.R')
x=sample(10, 100, replace=T)
mean(x)
mean(table(x))
