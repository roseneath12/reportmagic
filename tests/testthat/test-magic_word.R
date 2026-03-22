test_that("magic_word() returns correct lowercase words", {
  # rounded > actual → "almost"
  expect_equal(magic_word(69300000, 70000000), "almost")

  # rounded < actual → "over"
  expect_equal(magic_word(70000000, 69000000), "over")

  # rounded == actual → ""
  expect_equal(magic_word(70000000, 70000000), "")
})

test_that("magic_word() returns correct capitalised words when requested", {
  # rounded > actual → "Almost"
  expect_equal(magic_word(69300000, 70000000, capitalized = TRUE), "Almost")

  # rounded < actual → "Over"
  expect_equal(magic_word(70000000, 69000000, capitalized = TRUE), "Over")

  # rounded == actual → ""
  expect_equal(magic_word(70000000, 70000000, capitalized = TRUE), "")
})
