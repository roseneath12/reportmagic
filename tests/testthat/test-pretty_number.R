test_that("pretty_number() formats numbers without scientific notation", {
  expect_equal(pretty_number(1000000), "1,000,000")
  expect_equal(pretty_number(123456789), "123,456,789")
})

test_that("pretty_number() handles decimals correctly", {
  expect_equal(pretty_number(1234.56), "1,234.56")
  expect_equal(pretty_number(0.1234), "0.1234")
})

test_that("pretty_number() preserves negative numbers", {
  expect_equal(pretty_number(-2500), "-2,500")
})

test_that("pretty_number() handles zero cleanly", {
  expect_equal(pretty_number(0), "0")
})
