#' Order \code{link[]{data.frame}} By Given Columns
#'
#' Order \code{link[]{data.frame}} by given columns.
#'
#' @param x a \code{\link[base]{data.frame}} or \code{\link[base]{matrix}}
#' @param col.names names of the column to be ordered on
#' @param ... additional arguments passed to \code{\link[base]{order}}
#' @keywords manip
#' @export
#' @seealso \code{\link{order}}
#' @examples
#' set.seed(0)
#' x=data.frame(
#'   c1=sample(letters[1:10])
#'   , c2=sample(letters[1:10])
#'   )
#' x
#' orderby(x, 'c1')
#' orderby(x, 'c2')
#' orderby(x, 'c1', decreasing=T)
#' orderby(x, 'c2', decreasing=T)
#' 
#' x=data.frame(
#'   c1=sample(letters[1:5], 10, replace=T)
#'   , c2=sample(letters[1:5], 10, replace=T)
#'   )
#' x
#' orderby(x, c('c1', 'c2'))
#' orderby(x, c('c1', 'c2'), decreasing=T)
orderby=function(x, col.names, ...) {
  index=do.call(
    order
    , c(
      lapply(
        col.names
        , function(n) {
          x[, n]
        }
        )
        , list(...)
      )
    )
  x[index, , drop=F]
}

