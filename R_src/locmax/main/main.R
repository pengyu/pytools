x=c(1, 2, 3, 2, 1, 1, 2, 1)
locmax(x)

x=c(1, 2, 3, 2, 1, 1, 2, 1)
locmax(x, index=10L*seq_len(length(x)))

x=c(rep(0,20), 1, rep(0,5), 1, rep(0,20))
locmax(x, m=5)
locmax(x, m=15)

x=c(0, 1, 0)
index=c(0L, 10L, 20L)
locmax(x, index, m=5)

