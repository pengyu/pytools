source('../orderby.R')
set.seed(0)
x=data.frame(
  c1=sample(letters[1:10])
  , c2=sample(letters[1:10])
  )
x
orderby(x, 'c1')
orderby(x, 'c2')
orderby(x, 'c1', decreasing=T)
orderby(x, 'c2', decreasing=T)
orderby(as.matrix(x), 'c1')

x=data.frame(
  c1=sample(letters[1:5], 10, replace=T)
  , c2=sample(letters[1:5], 10, replace=T)
  )
x
orderby(x, c('c1', 'c2'))
orderby(x, c('c1', 'c2'), decreasing=T)

