#' Fast split
#'
#' The native \code{\link{split}} is very slow. This function speeds up the native function considerably.
#'
#' @param x a \code{\link{data.frame}}
#' @param f a factor in the sense that 'as.factor(f)' defines the grouping.
#' @param drop logical, indicating whether levels that do not occur should be dropped (if 'f is a 'factor' or a list).
#' @param ... further arguments, not sure what they are.
#' @keywords category
#' @export
#' @examples
#' m=50000
#' n=20
#' k=20000
#' 
#' set.seed(0)
#' x=as.data.frame(replicate(n,1:m))
#' f=sample(1:k, size=m, replace=TRUE)
#' system.time(tmp<-fast_split(x, f))
#' system.time(tmp<-split(x, f))
fast_split=function(x, f, drop = F, ...) {
  f=as.factor(f)
  tmp=lapply(x, function(xi) split(xi, f, drop = drop, ...))
  rn=split(rownames(x), f, drop = drop, ...)

  tmp1=unlist(unname(tmp), recursive = F)
  tmp2=split(tmp1, factor(names(tmp1), levels = unique(names(tmp1))))
  lapply(setNames(seq_along(tmp2), names(tmp2)), function(i) {
    t=tmp2[[i]]
    names(t)=names(x)
    attr(t, "row.names")=rn[[i]]
    class(t)="data.frame"
    t   
})  
}
