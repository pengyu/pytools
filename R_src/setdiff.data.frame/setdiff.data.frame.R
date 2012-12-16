#' Computed \code{\link[base]{data.frame}} Differences Using Common Columns
#'
#' Computed \code{\link[base]{data.frame}} differences using common columns.
#'
#' @param x a \code{\link[base]{data.frame}}
#' @param y a \code{\link[base]{data.frame}}
#' @keywords array manip
#' @rdname setdiff
#' @export setdiff data.frame
#' @seealso \code{\link[base]{setdiff}}
#' @examples
#' x=data.frame(z1=letters[1:3], x=1:3)
#' y=data.frame(z1=letters[2:4], y=-(2:4))
#' setdiff(x, y)
#' setdiff(y, x)
#' 
#' x=data.frame(z1=letters[1:3], z2=letters[1:3], x=1:3)
#' y=data.frame(z1=letters[2:4], z2=letters[2:4], y=-(2:4))
#' setdiff(x, y)
#' setdiff(y, x)
#' 
#' x=data.frame(z1=letters[1:3], x=1:3)
#' y=data.frame(z2=letters[2:4], y=-(2:4))
#' setdiff(x, y)
#' setdiff(y, x)
setdiff=function(x, y) UseMethod('setdiff')

#' @return \code{NULL}
#'
#' @rdname setdiff
#' @method setdiff default
#' @S3method setdiff default
setdiff.data.frame=base::setdiff

#' @return \code{NULL}
#'
#' @rdname setdiff
#' @method setdiff data.frame
#' @S3method setdiff data.frame
setdiff.data.frame=function(x, y){
  by_names=intersect(names(x), names(y))
  l=length(by_names)
  if(l == 0L) {
    x
  } else {
    bz=do.call(
      'paste'
      , c(
        rbind(
          x[, by_names, drop=F]
          , y[, by_names, drop=F]
          )
        , sep = '\r'
        )
      )
    nx=nrow(x)
    bx=bz[seq_len(nx)]
    by=bz[-seq_len(nx)]

    comm=match(bx, by, 0L)
    return(x[comm == 0L,,drop=F])
  }
}
