#' Remove row names
#'
#' Remove row names.
#'
#' @param x a \code{list} or a \code{data.frame}
#' @keywords manip
#' @export
#' @examples
#' x=data.frame(x=1:3, row.names=letters[1:3])
#' unrownames(x)
unrownames=function(x) {
  rownames(x)=NULL
  x
}

