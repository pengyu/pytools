source('../head_recurse.R')
head_recurse(letters[1:10])
x=list(
  a=data.frame(x=1:10)
  , b=data.frame(x=1:10)
  , c=data.frame(x=1:10)
  , d=data.frame(x=1:10)
  , x=data.frame(x=1:10)
  , y=data.frame(x=1:10)
  , z=data.frame(x=1:10)
  )
head_recurse(x, n=3)
head_recurse(x, n=3, l=2)

f=head_recurse
rm('head_recurse')
f(letters[1:10])
f(x, n=3)
f(x, n=3, l=2)

