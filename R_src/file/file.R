#' Create a Raw File Handle
#'
#' A replacement of \code{\link[base]{file}} in the \pkg{base} package. Create a raw file handle. The example can not be put in the help page. See an example in the package source repository.
#'
#' @param description a raw file, which can be a character device like /dev/stdin or a pipe.
#' @param raw
#' @param ...
#' @keywords file
#' @export
file=function(description, raw=T, ...) {
  base::file(description, raw=raw, ...)
}

