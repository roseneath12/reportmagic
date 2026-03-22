#' Format numbers without scientific notation
#'
#' Ensures clean, publication-ready formatting by suppressing scientific
#' notation and applying standard thousands separators.
#'
#' @param x A numeric value.
#'
#' @return A character string.
#'
#' @examples
#' payment_figure <- 69300000
#'
#' # Format a large figure for publication
#' pretty_number(payment_figure)
#' # "69,300,000"
#'
#' @export
pretty_number <- function(x) {
  format(x, scientific = FALSE, big.mark = ",")
}

