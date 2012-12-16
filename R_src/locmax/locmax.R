#' Return the indexes of the local maxima.
#'
#' Return the indexes of the local maxima.
#'
#' @param x a list
#' @param index the index of the element in the list \code{x}. Must be a vector of integers. If omitted, the index is assumed to be \code{seq_len(x)}.
#' @keywords list manip
#' @import zoo
#' @export
locmax=function(x, index, m) {
  if(missing(index)) {
    zx=zoo::zoo(x)
  } else {
    zx=merge(zoo::zoo(, seq(from=min(index), to=max(index))), zoo::zoo(x, order.by=index), fill=0)
  }
  if(!missing(m)) {
    zx=as.zoo(kernapply(as.ts(zx), kernel.triweight(m=m)))
  }
  rxz=zoo::rollapply(zx, 3, function(x) which.max(x)==2)
  zoo::index(rxz)[zoo::coredata(rxz)]
}

