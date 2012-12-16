#' Enumerate all the Groupings of a Vector, Return Results in \code{data.frame}s
#'
#' Enumerate all the groupings of a vector, return results in \code{data.frame}s.
#'
#' @param items a vector of items to be grouped
#' @param group_sizes the size of each group
#' @keywords manip
#' @import plyr
#' @export
#' @seealso \code{\link{lenumgrp}}
#' @examples
#' denumgrp(letters[1:4], setNames(2, 'x'))
#' denumgrp(letters[1:4], setNames(c(2,1), c('x', 'y')))
#' denumgrp(letters[1:4], setNames(c(2,2), c('x', 'y')))
denumgrp=function(items, group_sizes) {
  tmp=lenumgrp(items, group_sizes)
  lapply(
    tmp
    , function(x) {
      result=plyr::ldply(
        lapply(
          x
          , function(u) {
            data.frame(id=u)
          }
          )
        )
      names(result)[[1]]='group'
      result
    }
    )
}

#' Enumerate all the Groupings of a Vector, Return Results in \code{list}s
#'
#' Enumerate all the groupings of a vector, return results in \code{list}s.
#'
#' @param items a vector of items to be grouped
#' @param group_sizes the size of each group
#' @keywords manip
#' @import gtools
#' @export
#' @seealso \code{\link{denumgrp}}
#' @examples
#' lenumgrp(letters[1:4], setNames(2, 'x'))
#' lenumgrp(letters[1:4], setNames(c(2,1), c('x', 'y')))
#' lenumgrp(letters[1:4], setNames(c(2,2), c('x', 'y')))
lenumgrp=function(items, group_sizes) {
  currfun=match.fun(sys.call()[[1]])
  if(length(group_sizes)==1) {
    tmp=gtools::combinations(n=length(items), r=group_sizes[[1]])
    lapply(
      seq_len(nrow(tmp))
      , function(i) {
        rest=items[-tmp[i,]]
        if(length(rest)==0) {
          setNames(list(items[tmp[i,]]), names(group_sizes)[[1]])
        } else {
          setNames(list(items[tmp[i,]], items[-tmp[i,]]), c(names(group_sizes)[[1]], 'rest'))
        }
      }
      )
  } else if(length(group_sizes)>1) {
    unlist(
      lapply(
        currfun(items, group_sizes[1])
        , function(x) {
          #browser()
          tmp=currfun(x$rest, group_sizes[-1])
          x$rest=NULL
          lapply(
            tmp
            , function(x1) {
              append(x, x1)
            }
            )
        }
        )
      , recursive=F
      )
  } else {
    NULL
  }
}

