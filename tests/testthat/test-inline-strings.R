# Tests adapted from hadley/readxl

context("Inline strings")

test_that("can read sheets with inlineStr", {
  # Original source: http://our.componentone.com/wp-content/uploads/2011/12/TestExcel.xlsx
  # These appear to come from LibreOffice 4.2.7.2.
  x <- xlsx_cells("inlineStr.xlsx")$character
  expect_equal(x[14], "RQ11610")
})
