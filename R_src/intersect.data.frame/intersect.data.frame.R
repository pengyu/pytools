#' Computed \code{\link[base]{data.frame}} Intersections Using Common Columns
#'
#' Computed \code{\link[base]{data.frame}} intersections using common columns.
#'
#' @param x a \code{\link[base]{data.frame}}
#' @param y a \code{\link[base]{data.frame}}
#' @keywords array manip
#' @rdname intersect
#' @export intersect
#' @seealso \code{\link[base]{intersect}}
#' @examples
#' x=data.frame(z1=letters[1:3], x=1:3)
#' y=data.frame(z1=letters[2:4], y=-(2:4))
#' intersect(x, y)
#' intersect(y, x)
#' 
#' x=data.frame(z1=letters[1:3], z2=letters[1:3], x=1:3)
#' y=data.frame(z1=letters[2:4], z2=letters[2:4], y=-(2:4))
#' intersect(x, y)
#' intersect(y, x)
#' 
#' x=data.frame(z1=letters[1:3], x=1:3)
#' y=data.frame(z2=letters[2:4], y=-(2:4))
#' intersect(x, y)
#' intersect(y, x)
intersect=function(x, y) UseMethod('intersect')

#' @return \code{NULL}
#'
#' @rdname intersect
#' @method intersect default
#' @S3method intersect default
intersect.default=base::intersect

#' @return \code{NULL}
#'
#' @rdname intersect
#' @method intersect data.frame
#' @S3method intersect data.frame
intersect.data.frame=function(x, y){
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
    return(x[comm != 0L,,drop=F])
  }
}
