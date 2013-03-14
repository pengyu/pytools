#source('../hwrite.list.R')
#library(hwriter)
#d=data.frame(x=1:3, y=letters[1:3])
#d[1,1]='<a href="http://www.google.com">google</a>'
#x=list(
#  a=d
#  , b=d
#  )

library(pytools)
library(hwriter)

x=list(
  A=list(
    a1=data.frame(x1=1:2, y1=letters[1:2])
    , b1=data.frame(u1=1:2, v1=letters[1:2])
    )
  , B=list(
    a2=data.frame(x1=1:2, y1=letters[1:2])
    , b2=data.frame(u1=1:2, v1=letters[1:2])
    )
  )

p=openPage('main.html')
hwrite(x, p)
closePage(p)

