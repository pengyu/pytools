#' Intersect Multiple Sets
#'
#' Intersect multiple sets.
#'
#' @param ... all the sets or a list of sets.
#' @keywords misc
#' @export
#' @examples
#' intersect2(
#'   list(
#'     c('a', 'b', 'c')
#'     , c('a', 'b', 'd')
#'     , c('a', 'f', 'g')
#'     )
#'   )
#' 
#' intersect2(
#'   c('a', 'b', 'c')
#'   , c('a', 'b', 'd')
#'   , c('a', 'f', 'g')
#'   )
intersect2=function(...) {
  args=list(...)
  nargs=length(args)
  if(nargs <= 1) {
    if(nargs == 1 && is.list(args[[1]])) {
      do.call(Recall, args[[1]])
    } else {
      stop("cannot evaluate intersection fewer than 2 arguments")
    }
  } else if(nargs == 2) {
    intersect(args[[1]], args[[2]])
  } else {
    intersect(args[[1]], Recall(args[-1]))
  }
}

