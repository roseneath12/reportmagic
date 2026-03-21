test_that("find_figure returns the correct payment for a given period", {
  expect_equal(
    find_figure(
      from   = dummy_df,
      where  = "period",
      is     = "June 2025",
      select = "payments"
    ),
    340.75
  )
})

test_that("find_figure returns the correct value for a financial year", {
  expect_equal(
    find_figure(
      from   = dummy_df,
      where  = "period",
      is     = "Financial year 25-26",
      select = "payments"
    ),
    1526.25
  )
})

test_that("find_figure returns the total correctly", {
  expect_equal(
    find_figure(
      from   = dummy_df,
      where  = "period",
      is     = "Total",
      select = "payments"
    ),
    3293.50
  )
})

test_that("find_figure errors when the column does not exist", {
  expect_error(
    find_figure(
      from   = dummy_df,
      where  = "not_a_column",
      is     = "June 2025",
      select = "payments"
    )
  )
})

test_that("find_figure errors when the select column does not exist", {
  expect_error(
    find_figure(
      from   = dummy_df,
      where  = "period",
      is     = "June 2025",
      select = "not_a_column"
    )
  )
})

test_that("find_figure errors when no period matches", {
  expect_error(
    find_figure(
      from   = dummy_df,
      where  = "period",
      is     = "Not a real period",
      select = "payments"
    )
  )
})
