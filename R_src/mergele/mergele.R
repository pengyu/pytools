#' Merge List Elements With the Same Name
#'
#' Merge list elements with the same name.
#'
#' @param x a list
#' @param merge_fun the function to merge list elements
#' @param ... additional arguments passed to \code{\link{do.call}}
#' @keywords list manip
#' @export
#' @examples
#' x=list(
#'   u=list(a=1, b=2)
#'   , u=list(c=3, d=4)
#'   , v=list(a=1, b=2)
#'   , v=list(c=3, d=4)
#'   )
#' mergele(x)
mergele=function(x, merge_fun=c, ...) {
  n=names(x)
  if(is.null(n)) return(x)
  tmp=split(seq_along(x), n)
  lapply(
    tmp
    , function(v) {
      do.call(merge_fun, unname(x[v]), ...)
    }
    )
}

