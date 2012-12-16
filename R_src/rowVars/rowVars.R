#' Compute Row Variances
#'
#' Compute row variances.
#'
#' @param x a matrix or a data.frame
#' @keywords array algebra arith
#' @export
rowVars=function(x) {
  base::apply(x, 1, var)
}

