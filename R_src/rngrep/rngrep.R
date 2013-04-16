#' Extract Matched Rows By Rownames
#'
#' Extract matched rows by rownames
#'
#' @param x a character vector
#' @param pattern regex (or character string)
#' @param ... additional arguments passed to \code{\link{grep}}
#' @keywords list manip
#' @export
#' @seealso \code{\link{grep}}
#' @examples
#' x=data.frame(x=1:3, row.names=letters[1:3])
#' rngrep(x, 'a')
rngrep=function(x, pattern, ...) {
  x[grep(pattern, rownames(x), ...), , drop=F]
}

