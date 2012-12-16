#' Simplify a list to a vector
#'
#' Simplify a list to a vector.
#'
#' @param x a list
#' @param recursive whether do recursive unlist
#' @keywords list manip
#' @export
unlist=function(x, recursive=F, ...) {
  base::unlist(x, recursive=recursive, ...)
}

