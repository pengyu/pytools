#' Data Frames without Checking Colnames and Converting Characters to Factors
#'
#' A replacement of \code{\link[base]{data.frame}} in the \pkg{base} package. It by default does not check colnames and convert characters to factors.
#'
#' @param ...
#' @param check.names logical, whether to check variable names are syntactically valid.
#' @param stringsAsFactors logical, whether character vectors be converted to factors
#' @keywords classes methods
#' @export
data.frame=function(...
  , check.names=F
  , stringsAsFactors=F
  ) {
  base::data.frame(
    ...
    , check.names=check.names
    , stringsAsFactors=stringsAsFactors
    )
}

