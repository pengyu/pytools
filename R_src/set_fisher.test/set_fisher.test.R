#' Fisher Test based on Sets
#'
#' A is a subset of A0. B overlaps with A0 (hence maybe A as well). This function test whether the overlap of B and A is siginficant.
#'
#' @param A
#' @param A0
#' @param B
#' @keywords htest
#' @export
set_fisher.test=function(A, A0, B, ...) {
  stopifnot(length(setdiff(A, A0))==0)
  x=matrix(NA, nr=2, nc=2)
  x[1,2]=length(A)
  x[2,2]=length(A0)

  x[1,1]=length(intersect(A, B))
  x[2,1]=length(intersect(A0, B))

  x[,2]=x[,2]-x[,1]

  x[2,]=x[2,]-x[1,]
  print(x)
  fisher.test(x, ...)
}


