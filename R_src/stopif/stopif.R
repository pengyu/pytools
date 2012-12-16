#' Stop when Certain Condition is Met
#'
#' Stop when certain condition is met.
#'
#' @param ... logical R expression
#' @keywords environment programming error
#' @export
#' @seealso \code{\link[base]{stopifnot}}
#' @examples
#' stopif(T)
stopif=function(...) {
  n <- length(ll <- list(...))
  if (n == 0L) 
    return(invisible())
  mc <- match.call()
  for (i in 1L:n) {
    if (is.logical(r <- ll[[i]]) && !any(is.na(r)) && all(r)) {
      ch <- deparse(mc[[i + 1]], width.cutoff = 60L)
      if (length(ch) > 1L) {
        ch <- paste(ch[1L], "....")
      }
      stop(paste0(ch, " is ", if (length(r) > 1L) "all ", "TRUE"), call. = FALSE)
    }
  }
  invisible()
}

