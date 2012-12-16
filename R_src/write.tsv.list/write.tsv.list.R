#' Write list to tsv file
#'
#' Write list to tsv file.
#'
#' @param x a \code{list} or a \code{data.frame}
#' @param file a character file name or a connection
#' @param prefix the prefix to be added to list names.
#' @param prompt a prompt to denote the names.
#' @param name_sep separator between names.
#' @keywords print file
#' @export
#' @examples
#' x=list(
#'   A=list(
#'     a1=data.frame(x1=1:2, y1=letters[1:2])
#'     , b1=data.frame(u1=1:2, v1=letters[1:2])
#'     )
#'   , B=list(
#'     a2=data.frame(x1=1:2, y1=letters[1:2])
#'     , b2=data.frame(u1=1:2, v1=letters[1:2])
#'     )
#'   )
#' write.tsv.list(x)
#' write.tsv.list(x, name_sep='.', sep=',')
#' write.tsv.list(c(x=1, y=2))
#' x=list(
#'   list(
#'     data.frame(x1=1:2, y1=letters[1:2])
#'     , data.frame(u1=1:2, v1=letters[1:2])
#'     )
#'   , list(
#'     data.frame(x1=1:2, y1=letters[1:2])
#'     , data.frame(u1=1:2, v1=letters[1:2])
#'     )
#'   )
#' write.tsv.list(x)
write.tsv.list=function(x, file=stdout(), prefix=NULL, prompt='>', name_sep='$', ...) {
  character_file=is.character(file)
  if(character_file) {
    f=file(file, open='w+')
    close(f)
    file=file(file, open='a')
  } 
  write.tsv.list.impl(x, file, prefix, prompt, name_sep, ...)
  if(character_file) {
    close(file)
  }
}

write.tsv.list.impl=function(x, file, prefix, prompt, name_sep, ...) {
  currfun=match.fun(sys.call()[[1]])
  if(is.list(x) & !is.data.frame(x)) {
    invisible(
      lapply(
        if(is.null(names(x))) {
          seq_along(x)
        } else {
          names(x)
        }
        , function(n) {
          prefix=paste(prefix, n, sep=name_sep)
          writeLines(paste0(prefix, prompt), con=file)
          currfun(x[[n]], file, prefix=prefix, prompt=prompt, name_sep=name_sep, ...)
          writeLines('', con=file)
        }
        )
      )
  } else {
    invisible(write.tsv(x, file=file, ...))
  }
}

