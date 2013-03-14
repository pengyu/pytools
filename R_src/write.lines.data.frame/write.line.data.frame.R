#' Write \code{data.frame} Line by Line
#'
#' Write \code{data.frame} line by line.
#'
#' @param x a \code{\link{data.frame}}
#' @param file a character file name or a connection
#' @keywords print file
#' @rdname write.lines
#' @export write.lines
#' @examples
#' x=data.frame(x=1:10,y=letters[1:10])
#' write.lines(x)
write.lines=function(x, file, ...) UseMethod('write.lines')

#' @return \code{NULL}
#'
#' @rdname write.lines
#' @method write.lines data.frame
#' @S3method write.lines data.frame
write.lines.data.frame=function(x, file=stdout(), ...) {
  character_file=is.character(file)
  if(character_file) {
    f=file(file, open='w+')
    close(f)
    file=file(file, open='a')
  } 
  nms=names(x)
  lapply(
    seq_len(nrow(x))
    , function(i) {
      lapply(
        nms
        , function(n) {
          writeLines(paste0(n, ': ', x[i,n]), con=file)
        }
        )
      writeLines('', con=file)
    }
    )
  if(character_file) {
    close(file)
  }
  invisible(NULL)
}
