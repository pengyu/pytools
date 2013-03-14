#' Read TSV file.
#'
#' Read TSV file, with \code{quote} and \code{comment.char} disabled.
#'
#' @param file input file
#' @keywords file
#' @export
#' @examples
#' read.tsv(pipe('printf "%s\t%s\n" x y 1 2 3 4 5 6'))
read.tsv=function(file
  , header=T
  , sep='\t'
  , quote=''
  , check.names=F
  , comment.char=''
  , stringsAsFactors=F
  , ...) {
  read.table(file
    , header=header
    , sep=sep
    , quote=quote
    , check.names=check.names
    , comment.char=comment.char
    , stringsAsFactors=stringsAsFactors
    , ...)
}

