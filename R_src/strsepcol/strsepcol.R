#' \code{strsplit} a List of Strings and Extract a Given Column
#'
#' \code{strsplit} a list of strings and extract a given column
#'
#' @param x a list of strings.
#' @param col the column to extract.
#' @keywords character
#' @export
#' @examples
#' strsepcol(c('A:a', 'B:b'))
#' strsepcol(c('A:a', 'B:b'), col=2)
strsepcol=function(x
  , sep=':'
  , col=1
  ) {
  sapply(
    strsplit(x, ':')
    , function(x) {
      x[[col]]
    }
    )
}

