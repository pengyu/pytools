#' Read TSV File with Uneven Number of Columns
#'
#' Read TSV file with uneven number of columns.
#'
#' @param file input file, must be character
#' @param quote
#' @param check.names
#' @param comment.char
#' @param stringsAsFactors
#' @param col.names
#' @keywords file
#' @export
#' @examples
#' read.tsv(pipe('printf "%s\t%s\n" x y 1 2 3 4 5 6'))
read.uneven.tsv=function(file
  , sep='\t'
  , quote=''
  , check.names=F
  , comment.char=''
  , stringsAsFactors=F
  , col.names
  , ...) {
  if(class(file)!='character') {
    stop('`file` must be character')
  }
  if(missing(col.names)) {
    col.names=paste0('V', nc=seq_len(max(count.fields(file, sep=sep))))
  }
  read.table(file
    , header=F
    , sep=sep
    , quote=quote
    , check.names=check.names
    , comment.char=comment.char
    , stringsAsFactors=stringsAsFactors
    , col.names=col.names
    , fill=T
    , ...)
}

