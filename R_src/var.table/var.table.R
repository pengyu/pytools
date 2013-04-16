#' Compute Variance of Frequency Table
#'
#' Compute variance of frequency table
#'
#' @param x a frequency table
#' @param ... additional arguments
#' @keywords univar
#' @rdname var
#' @export var
#' @seealso \code{\link[base]{var}}
#' @examples
#' x=sample(10, 100, replace=T)
#' var(x)
#' var(table(x))
var=function(x, ...) UseMethod('var')

#' @return \code{NULL}
#'
#' @rdname var
#' @method var default
#' @S3method var default
var.default=stats::var

#' @return \code{NULL}
#'
#' @rdname var
#' @method var table
#' @S3method var table
var.table=function(x, min=.Machine$double.xmin, max=.Machine$double.xmax) {
  v=as.numeric(names(x))
  x=x[v>=min & v<=max]
  v=v[v>=min & v<=max]
  v_m=v-mean.table(x)
  sum(x*v_m*v_m)/(sum(x)-1)
}

