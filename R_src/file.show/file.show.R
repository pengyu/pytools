#' Cat Files
#'
#' cat files.
#'
#' @param ... additional arguments passed to \code{\link{grep}}
#' @param pager a character vector
#' @keywords file
#' @export
#' @seealso \code{\link[base]{file.show}}
#' @examples
#' x=data.frame(x=1:3, row.names=letters[1:3])
#' rngrep(x, 'a')
file.show=function(..., pager='cat') {
  base::file.show(..., pager=pager)
}

