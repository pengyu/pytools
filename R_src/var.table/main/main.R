#source('../mean.table.R')
library(pytools)
x=sample(10, 100, replace=T)
var(x)
var(table(x))

max=quantile(x, .8)
var(x[x<=max])
var(table(x), max=max)

