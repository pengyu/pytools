#suppressPackageStartupMessages(library(pytools))
source('../intersect.data.frame.R')
x=data.frame(z1=letters[1:3], x=1:3)
y=data.frame(z1=letters[2:4], y=-(2:4))
intersect(x, y)
intersect(y, x)

x=data.frame(z1=letters[1:3], z2=letters[1:3], x=1:3)
y=data.frame(z1=letters[2:4], z2=letters[2:4], y=-(2:4))
intersect(x, y)
intersect(y, x)

x=data.frame(z1=letters[1:3], x=1:3)
y=data.frame(z2=letters[2:4], y=-(2:4))
intersect(x, y)
intersect(y, x)

