#' Evaluate a String
#'
#' Evaluate a string.
#'
#' @param x a string to be evaluated.
#' @param envir the \code{\link{environment}} in which \code{expr} is to be evaluated. May also be \code{NULL}, a list, a data frame, a pairlist or an integer as specified to \code{\link{sys.call}}.
#' @param enclos relevant when \code{envir} is a (pair)list or a data frame. Specifies the enclosure, i.e., where R looks for objects not found in \code{envir}. This can be \code{NULL} (interpreted as the base package environment, \code{\link{baseenv}()}) or an environment.
#' @keywords data programming
#' @export
#' @examples
#' x=10
#' y=20
#' evalstr('x+y')
evalstr=function(
  x
  , envir=parent.frame()
  , enclos = if(is.list(envir) || is.pairlist(envir)) {
    parent.frame()
  } else {
    baseenv()
  }
  ) {
  eval(parse(text=x), envir=envir, enclos = enclos)
}

