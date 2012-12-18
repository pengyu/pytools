suppressPackageStartupMessages(library(pytools))
x=data.frame(z1=letters[1:3], x=1:3)
y=data.frame(z1=letters[2:4], y=-(2:4))
setdiff(x, y)
setdiff(y, x)

x=data.frame(z1=letters[1:3], z2=letters[1:3], x=1:3)
y=data.frame(z1=letters[2:4], z2=letters[2:4], y=-(2:4))
setdiff(x, y)
setdiff(y, x)

x=data.frame(z1=letters[1:3], x=1:3)
y=data.frame(z2=letters[2:4], y=-(2:4))
setdiff(x, y)
setdiff(y, x)

