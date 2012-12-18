#' Set LC_ALL to C then sort
#'
#' Set LC_ALL to C then sort.
#'
#' @param x a R object
#' @param decreasing logical
#' @param ... additional arguments
#' @keywords manip
#' @import devtools
#' @export
#' @examples
#' sort(c('A', 'a'))
sort=function(x, decreasing=F, ...) {
  old_collate=devtools:::set_collate('C')
  on.exit(devtools:::set_collate(old_collate))
  base::sort(x, decreasing, ...)
}

