#' Compute Median of Frequency Table
#'
#' Compute median of frequency table
#'
#' @param x a frequency table
#' @keywords univar
#' @export
#' @seealso \code{\link{median}}
#' @examples
#' x=sample(10, 100, replace=T)
#' median(x)
#' median(table(x))
median.table=function(x, min=.Machine$double.xmin, max=.Machine$double.xmax) {
  tmp=subset(
    data.frame(
      v=as.numeric(names(x))
      , x=as.integer(x)
      )
    , v>=min & v<=max
    )
  tmp=tmp[order(tmp$v),,drop=F]
  rankings=Reduce(`+`, tmp$x, 0, accumulate=T)[-1]
  n=rankings[length(rankings)]
  half = (n+1L) %/% 2L
  if (n%%2L == 1L) {
    tmp$v[which(rankings>=half)[[1]]]
  } else {
    mean(
      c(
        tmp$v[which(rankings>=half)[[1]]]
        , tmp$v[which(rankings>half)[[1]]]
        )
      )
  }
}

