source('../write.tsv.list.R')
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

write.tsv.list(x)
write.tsv.list(x, file='output.txt')
write.tsv.list(x, name_sep='.', sep=',')
write.tsv.list(c(x=1, y=2))

x=list(
  list(
    data.frame(x1=1:2, y1=letters[1:2])
    , data.frame(u1=1:2, v1=letters[1:2])
    )
  , list(
    data.frame(x1=1:2, y1=letters[1:2])
    , data.frame(u1=1:2, v1=letters[1:2])
    )
  )

write.tsv.list(x)
