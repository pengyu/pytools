#' Display the Command History
#'
#' Display the command history.
#'
#' @param max.show The maximum number of lines to show.
#' @param ...
#' @keywords utilities
#' @export
history=function(max.show=Inf, ...) {
  utils::history(max.show=max.show, ...)
}

