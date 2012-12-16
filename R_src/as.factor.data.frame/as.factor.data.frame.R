#' Convert characters to \code{\link[base]{factor}}s.
#'
#' Convert character vectors or character columns of a \code{\link[base]{data.frame}} to \code{\link[base]{factor}}s.
#'
#' @param x a \code{\link{data.frame}}
#' @keywords category
#' @rdname as.factor
#' @export as.factor
#' @seealso \code{\link[base]{as.factor}}
#' @examples
#' tmp=data.frame(x=letters[1:10], y=1:10)
#' str(tmp)
#' str(as.factor(tmp))
as.factor=function(x) UseMethod('as.factor')

#' @return \code{NULL}
#'
#' @rdname as.factor
#' @method as.factor default
#' @S3method as.factor default
as.factor.default=base::as.factor

#' @return \code{NULL}
#'
#' @rdname as.factor
#' @method as.factor data.frame
#' @S3method as.factor data.frame
as.factor.data.frame=function(x) {
  ind=sapply(x, is.character)
  x[ind]=lapply(x[ind], factor) 
  x 
}
