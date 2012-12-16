#' Write a \code{data.frame} to an Excel Workbook
#'
#' Write a \code{data.frame} to an Excel workbook. Write the row.names only when they are not the row numbers.
#'
#' @param x a \code{data.frame} to write to the workbook.
#' @param file the path to the output xlsx file.
#' @param ...  other arguments to \pkg{xlsx} \code{write.xlsx2}
#' @keywords file print
#' @export
#' @examples
#' write.xlsx2(data.frame(x=1:10), 'main.xlsx')
write.xlsx2=function(x, file, ...) {
  library(xlsx)
  rowname_omitted=identical(row.names(x), as.character(seq_len(nrow(x))))
  xlsx:::write.xlsx2(x, file, row.names=!rowname_omitted, ...)
}

