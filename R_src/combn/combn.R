#' Generate All Combinations of n Elements, Taken m at a Time
#'
#' Generate all combinations of n elements, taken m at a time.
#'
#' @param x vector source for combinations, or integer \code{n} for \code{x <- seq_len(n)}.
#' @param m number of elements to choose.
#' @param ... optional
#' @keywords iteration utilities
#' @export
#' @seealso \code{\link[utils]{combn}}
#' @examples
#' combn(letters[1:3], 2)
combn=function(x, m, simplify=F, ...) {
  utils::combn(x=x, m=m, simplify=simplify, ...)
}

