#' Convolve an input sequence with a kernel
#'
#' Convolve an input sequence with a kernel. This a centered version of the original \code{kernapply.ts} in \code{stats} package
#'
#' @param x an \code{ts} object.
#' @param k smoothing \code{tskernel} object.
#' @param circular logical, whether x is circular or periodic.
#' @keywords ts
#' @import stats
#' @export
kernapply.ts=function(x, k, circular=F, ...)
{
  if (!is.matrix(x))
  {
    y <- stats:::kernapply.vector(as.vector(x), k, circular=circular)
    ts (y, end=end(x), frequency=frequency(x))
  }
  else
    y <- apply(x, MARGIN=2L, FUN=kernapply, k, circular=circular)

  if(circular)
    ts (y, end=end(x), frequency=frequency(x))
  else
  {
    y <- as.ts(y)
    t1 <- tsp(x)[1]+(length(k[[1]])-1)/tsp(x)[3]
    t2 <- tsp(x)[2]-(length(k[[1]])-1)/tsp(x)[3]
    tsp(y) <- c(t1,t2,tsp(x)[3])
    return(y)
  }
}

