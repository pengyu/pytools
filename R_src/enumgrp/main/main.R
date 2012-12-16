source('../enumgrp.R')
lenumgrp(letters[1:4], setNames(2, 'x'))
lenumgrp(letters[1:4], setNames(c(2,1), c('x', 'y')))
lenumgrp(letters[1:4], setNames(c(2,2), c('x', 'y')))

denumgrp(letters[1:4], setNames(2, 'x'))
denumgrp(letters[1:4], setNames(c(2,1), c('x', 'y')))
denumgrp(letters[1:4], setNames(c(2,2), c('x', 'y')))

