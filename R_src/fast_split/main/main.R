source('../fast_split.R')
m=50000
n=20
k=20000

set.seed(0)
x=as.data.frame(replicate(n,1:m))
f=sample(1:k, size=m, replace=T)
system.time(tmp<-fast_split(x, f))
system.time(tmp<-split(x, f))

