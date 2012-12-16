#' Read TSV file.
#'
#' Read TSV file.
#'
#' @param file input file
#' @keywords file
#' @export
#' @examples
#' read.tsv(pipe('printf "%s\t%s\n" x y 1 2 3 4 5 6'))
read.tsv=function(file, header=T, sep='\t', check.names=F, stringsAsFactors=F, ...) {
  read.table(file
    , header=header
    , sep=sep
    , check.names=check.names
    , stringsAsFactors=stringsAsFactors
    , ...)
}

