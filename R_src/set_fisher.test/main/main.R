source('../set_fisher.test.R')
A=letters[1:5]
A0=letters[1:14]
B=letters[seq(from=2L, length.out=10L, by=2L)]
set_fisher.test(A, A0, B)

