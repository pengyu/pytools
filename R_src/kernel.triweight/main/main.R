source('../kernel.triweight.R')
k=kernel.triweight(m=5)
k
x=rep(1,20)
result=kernapply(x, k)
length(result)

ts(x)
kernapply(ts(x), k)

