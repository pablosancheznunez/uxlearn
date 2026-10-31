# This file is part of the standard setup for testthat.
# It is recommended that you do not modify it.
#
# Where should you do additional test configuration?
# Learn more about the roles of various files in:
# * https://r-pkgs.org/testing-design.html#sec-tests-files-overview
# * https://testthat.r-lib.org/articles/special-files.html

library(testthat)
library(uxlearn)

test_check("uxlearn")


test_that("usability summary includes participant experience profiles", {

  data(usability_test)

  result <- ux_usability_summary(usability_test)

  expect_true("by_experience" %in% names(result))
  expect_equal(nrow(result$by_experience), 3)
  expect_equal(
    sort(result$by_experience$observations),
    c(50, 50, 50)
  )
})

test_that("usability summary includes task difficulty profiles", {

  data(usability_test)

  result <- ux_usability_summary(usability_test)

  expect_true("by_difficulty" %in% names(result))
  expect_equal(nrow(result$by_difficulty), 5)
})

test_that("usability summary preserves overall observations", {

  data(usability_test)

  result <- ux_usability_summary(usability_test)

  expect_equal(result$overall$observations, 150)
})
