#' Choose "almost" or "over" based on rounding direction
#'
#' Compares an actual value with a rounded value and returns
#' a natural-language word describing the relationship.
#'
#' @param actual The true numeric value.
#' @param rounded The rounded numeric value.
#'
#' @return "almost", "over", or "".
#' @examples
#' magic_word(69300000, 70000000)  # "almost"
#'
#' @export
magic_word <- function(actual, rounded) {
  if (rounded > actual) {
    "almost"
  } else if (rounded < actual) {
    "over"
  } else {
    ""
  }
}
