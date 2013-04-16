#' Compute Mean of Frequency Table
#'
#' Compute mean of frequency table
#'
#' @param x a frequency table
#' @param ... additional arguments passed to \code{\link{grep}}
#' @keywords univar
#' @export
#' @seealso \code{\link{mean}}
#' @examples
#' x=sample(10, 100, replace=T)
#' mean(x)
#' mean(table(x))
mean.table=function(x, min=.Machine$double.xmin, max=.Machine$double.xmax) {
  v=as.numeric(names(x))
  x=x[v>=min & v<=max]
  sum(as.numeric(names(x))*x)/sum(x)
}

