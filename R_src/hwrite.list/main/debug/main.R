library(hwriter)
library(pytools)
source('../../hwrite.list.R')
u=list(
  u=list(url='<a href="http://www.google.com">A>B</a>')
  )
p=openPage('main.html')
hwrite(u, p)
closePage(p)

