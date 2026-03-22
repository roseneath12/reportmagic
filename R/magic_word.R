#' Choose "almost" or "over" based on rounding direction
#'
#' Compares an actual value with a rounded value and returns a natural-language
#' word describing the relationship. Optionally returns the capitalised form.
#'
#' @param actual The true numeric value.
#' @param rounded The rounded numeric value.
#' @param capitalized Logical. Should the returned word be capitalised?
#'   Defaults to FALSE.
#'
#' @return A character string: "almost", "over", "Almost", "Over", or "".
#'
#' @examples
#' payment_figure_actual  <- 69300000
#' payment_figure_rounded <- 70000000
#'
#' magic_word(payment_figure_actual, payment_figure_rounded)
#' # "almost"
#'
#' magic_word(payment_figure_actual, payment_figure_rounded, capitalized = TRUE)
#' # "Almost"
#'
#' payment_figure_actual  <- 70000000
#' payment_figure_rounded <- 69000000
#'
#' magic_word(payment_figure_actual, payment_figure_rounded)
#' # "over"
#'
#' magic_word(payment_figure_actual, payment_figure_rounded, capitalized = TRUE)
#' # "Over"
#'
#' @export

magic_word <- function(actual, rounded, capitalized = FALSE) {
  out <- if (rounded > actual) {
    "almost"
  } else if (rounded < actual) {
    "over"
  } else {
    ""
  }

  if (capitalized && nzchar(out)) {
    out <- paste0(toupper(substr(out, 1, 1)), substr(out, 2, nchar(out)))
  }

  out
}
