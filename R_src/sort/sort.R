#' Set LC_ALL to C then sort
#'
#' Set LC_ALL to C then sort.
#'
#' @param x a R object
#' @param decreasing logical
#' @param ... additional arguments
#' @keywords manip
#' @export
#' @examples
#' sort(c('A', 'a'))
sort=function(x, decreasing=F, ...) {
  Sys.setlocale(category='LC_ALL', locale='C')
  base::sort(x, decreasing, ...)
}

