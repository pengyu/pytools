#' Call an External Command with the Output Captured
#'
#' Call an external command with the output captured.
#'
#' @param command the system command to be invoked, as a character string.
#' @param intern a logical value indicating whether to capture the output of the command as an R character vector.
#' @param ... all parameters passed to \code{\link[base]{system}} in the \pkg{base} package.
#' @keywords interface file utilities
#' @export
#' @examples
#' system('ls')
system=function(command, intern=T,...) {
  base::system(command, intern=intern, ...)
}

