#' Write a list to HTML file
#'
#' Write a list to HTML file.
#'
#' @param x a \code{list}
#' @param page a character file name or a connection
#' @param prefix the prefix to be added to list names.
#' @param prompt a prompt to denote the names.
#' @param ... additional parameters to \code{\link{hwrite}}
#' @keywords interface
#' @import hwriter
#' @export
#' @seealso \code{\link{write.tsv.list}} 
#' @examples
#' x=list(
#'   A=list(
#'     a1=data.frame(x1=1:2, y1=letters[1:2])
#'     , b1=data.frame(u1=1:2, v1=letters[1:2])
#'     )
#'   , B=list(
#'     a2=data.frame(x1=1:2, y1=letters[1:2])
#'     , b2=data.frame(u1=1:2, v1=letters[1:2])
#'     )
#'   )
#' 
#' library(hwriter)
#' p=openPage('main.html')
#' hwrite(x, p)
#' closePage(p)
hwrite.list=function(x, page, prefix=c(), prompt='>', ...) {
  invisible(
    lapply(
      if(is.null(names(x))) {
        seq_along(x)
      } else {
        names(x)
      }
      , function(n) {
        prefix=c(prefix, n)
        hwrite(c(prefix, prompt), page)
        x=x[[n]]
        if(is.list(x) && !is.data.frame(x)) {
          hwrite.list(x, page, prefix=prefix, prompt=prompt, ...)
        } else {
          hwrite(x, page, ...)
        }
      }
      )
    )
}
