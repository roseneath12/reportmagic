#' Format numbers without scientific notation
#'
#' Ensures clean, publication-ready formatting.
#'
#' @param x A numeric value.
#'
#' @return A character string.
#' @export
pretty_number <- function(x) {
  format(x, scientific = FALSE, big.mark = ",")
}
