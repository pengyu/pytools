#' Recursive head
#'
#' Return the head of an object recursively.
#'
#' @param x an object
#' @param n size of nonlist objects.
#' @param l size of list objects.
#' @keywords manip
#' @export
#' @import utils
#' @examples
#' head_recurse(letters[1:10])
#' x=list(
#'   a=data.frame(x=1:10)
#'   , b=data.frame(x=1:10)
#'   , c=data.frame(x=1:10)
#'   , d=data.frame(x=1:10)
#'   , x=data.frame(x=1:10)
#'   , y=data.frame(x=1:10)
#'   , z=data.frame(x=1:10)
#'   )
#' head_recurse(x, n=3)
#' head_recurse(x, n=3, l=2)
#' 
#' f=head_recurse
#' rm('head_recurse')
#' f(letters[1:10])
#' f(x, n=3)
#' f(x, n=3, l=2)
head_recurse=function(x, n=6, l=n) {
  currfun=match.fun(sys.call()[[1]])
  if(is.list(x) & !is.data.frame(x)) {
    lapply(
      utils::head(x, n=l)
      , function(x) {
        currfun(x, n, l)
      }
      )
  } else {
    utils::head(x, n)
  }
}

