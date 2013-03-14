#' Extract the Duplicated Elements from a \code{list}
#'
#' Extract the duplicated elements from a \code{list}.
#'
#' @param x a list of strings.
#' @keywords logic manip
#' @export
#' @examples
#' strsepcol(c('A:a', 'B:b'))
#' strsepcol(c('A:a', 'B:b'), col=2)
nonuniq=function(x) {
  unique(x[duplicated(x)])
}

