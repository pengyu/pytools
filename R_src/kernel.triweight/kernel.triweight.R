#' Triweight Kernel
#'
#' Generate a triweight kernel.
#'
#' @param m kernel with
#' @keywords ts
#' @export
#' @import stats
#' @examples
#' kernel.triweight(m=5)
kernel.triweight=function(m) {
  x=(1-(seq(from=0, to=m-1)/m)^2)^3
  x=x/(2*sum(x)-x[[1]])
  stats::kernel(
    coef=x
    , m=m-1
    , name=sprintf('triweight(%d)', m)
    )
}

