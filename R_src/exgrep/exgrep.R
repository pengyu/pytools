#' Extract Matched Elements
#'
#' Extract matched elements
#'
#' @param pattern regex (or character string)
#' @param x a character vector
#' @param ... additional arguments passed to \code{\link{grep}}
#' @keywords list manip
#' @export
#' @seealso \code{\link{grep}}
#' @examples
#' exgrep('^a', c('abc', 'efg'))
#' mergele(x)
exgrep=function(pattern, x, ...) {
  x[grep(pattern, x, ...)]
}

