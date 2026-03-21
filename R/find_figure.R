#' Find a figure in a table (SQL-style)
#'
#' This helper extracts a single value from a table using
#' SQL-like argument names: `from`, `where`, `is`, `select`.
#'
#' @param from A data frame.
#' @param where A column name to filter on (string).
#' @param is The value to match in the `where` column.
#' @param select The column to pull from the filtered row.
#'
#' @return A single value extracted from the table.
#' @examples
#' # SQL‑style extraction:
#' find_figure(
#'   from   = `Table 3 name of the table`,
#'   where  = "Period",
#'   is     = "September 2025",
#'   select = "Payment
#' )


find_figure <- function(from, where, is, select) {

  # check columns exist
  if (!where %in% names(from)) {
    stop("Column '", where, "' does not exist in the dataset.")
  }

  if (!select %in% names(from)) {
    stop("Column '", select, "' does not exist in the dataset.")
  }

  # filter
  out <- from[from[[where]] == is, , drop = FALSE]

  # error if no match
  if (nrow(out) == 0) {
    stop("No rows match the condition: ", where, " == '", is, "'.")
  }

  # return selected column
  out[[select]]
}
