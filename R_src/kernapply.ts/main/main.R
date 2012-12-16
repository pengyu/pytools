x=ts(c(rep(0, 5), 1, rep(0, 5)))
kernapply(x, kernel(coef='daniell', m=4))

x=ts(c(rep(0, 5), 1, rep(0, 5)), frequency=2)
kernapply(x, kernel(coef='daniell', m=4))

