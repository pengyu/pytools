#' Write TSV file.
#'
#' Write TSV file.
#'
#' @param ...
#' @param quote
#' @param sep
#' @keywords file print
#' @export
#' @import utils
#' @examples
#' write.tsv(data.frame(x=1:3, y=letters[1:3]))
#' write.tsv(data.frame(x=1:3, y=letters[1:3]), stdout())
write.tsv=function(..., quote=F, sep='\t', row.names=F) {
  utils::write.table(..., quote=quote, sep=sep, row.names=row.names)
}

