#' Loading Add-on Packages
#'
#' Loading Add-on Packages with package startup warnings suppressed.
#'
#' @param package the package name.
#' @param reload If true, reload the package.
#' @param character.only Whether \code{package} is converted to character.
#' @param ... all parameters passed to \code{\link[base]{library}} in the \pkg{base} package.
#' @keywords data
#' @export
library=function(package, reload=T, character.only=F, ...) {
  if(character.only==F) {
    package=as.character(substitute(package))
  }
  if(reload) {
    package_string=paste0('package:', package)
    if(package_string %in% search()) {
      base::detach(package_string, character.only=T)
    }
  }
  suppressPackageStartupMessages(base::library(package, character.only=T, ...))
}

