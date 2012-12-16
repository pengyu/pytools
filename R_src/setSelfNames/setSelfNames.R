#' Set the Names of an Object using the Values of the Object
#'
#' Set the names of an object using the values of the object.
#'
#' @param object an object for which a 'names' attribute will be meaningful
#' @keywords list
#' @export
#' @examples
#' setSelfNames(1:10)
#' setSelfNames(letters[1:10])
setSelfNames=function(object) {
  stats::setNames(object, object)
}

