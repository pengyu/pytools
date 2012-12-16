#' Tricube Kernel
#'
#' Generate a tricube kernel.
#'
#' @param m kernel with
#' @keywords ts
#' @export
#' @import stats
#' @examples
#' kernel.tricube(m=5)
kernel.tricube=function(m) {
  x=(1-(seq(from=0, to=m-1)/m)^3)^3
  x=x/(2*sum(x)-x[[1]])
  stats::kernel(
    coef=x
    , m=m-1
    , name=sprintf('tricube(%d)', m)
    )
}

