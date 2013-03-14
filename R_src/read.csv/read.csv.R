#' Read CSV File without Checking Colnames
#'
#' Read CSV file without checking colnames.
#'
#' @param ... parameters for \code{read.csv} in \pkg{base}
#' @keywords file
#' @export
#' @examples
#' read.csv(pipe('printf "%s,%s\n" "a b" "x y" 1 2 3 4 5 6'))
read.csv=function(...
  , check.names=F
  ) {
  utils::read.csv(...
    , check.names=check.names
    )
}

