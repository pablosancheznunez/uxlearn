test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})
test_that("UX task success is calculated correctly", {
  expect_equal(
    ux_task_success(c(1, 1, 0, 1, 1)),
    80
  )
})

test_that("UX task success rejects invalid inputs", {
  expect_error(ux_task_success(c(1, 2, 0)))
  expect_error(ux_task_success(c(1, NA, 0)))
})

test_that("UX task time returns correct statistics", {
  result <- ux_task_time(c(30, 45, 60, 35, 50))

  expect_equal(result$mean, 44)
  expect_equal(result$median, 45)
  expect_equal(result$min, 30)
  expect_equal(result$max, 60)
})

test_that("UX error rate is calculated correctly", {
  expect_equal(
    ux_error_rate(errors = 3, opportunities = 20),
    15
  )
})

test_that("UX error rate rejects invalid inputs", {
  expect_error(ux_error_rate(21, 20))
  expect_error(ux_error_rate(3, 0))
})

test_that("SUS score is calculated correctly", {
  expect_equal(
    ux_sus_score(c(4, 3, 4, 2, 5, 2, 4, 3, 4, 2)),
    72.5
  )
})

test_that("SUS rejects invalid responses", {
  expect_error(ux_sus_score(c(4, 3, 4)))
  expect_error(ux_sus_score(rep(6, 10)))
})
test_that("UX usability summary calculates overall metrics", {

  test_data <- data.frame(
    participant_id = c("P01", "P02", "P03", "P04"),
    task_id = c("T1", "T1", "T2", "T2"),
    task_name = c("Search", "Search", "Checkout", "Checkout"),
    success = c(1, 0, 1, 1),
    time_seconds = c(10, 20, 30, 40),
    errors = c(0, 1, 1, 0),
    satisfaction = c(6, 4, 5, 5)
  )

  result <- ux_usability_summary(test_data)

  expect_equal(result$overall$success_rate, 75)
  expect_equal(result$overall$mean_time_seconds, 25)
  expect_equal(result$overall$mean_errors, 0.5)
  expect_equal(result$overall$mean_satisfaction, 5)
})

test_that("UX usability summary calculates metrics by task", {

  test_data <- data.frame(
    participant_id = c("P01", "P02", "P03", "P04"),
    task_id = c("T1", "T1", "T2", "T2"),
    success = c(1, 0, 1, 1),
    time_seconds = c(10, 20, 30, 40),
    errors = c(0, 1, 1, 0),
    satisfaction = c(6, 4, 5, 5)
  )

  result <- ux_usability_summary(test_data)

  expect_equal(result$by_task$success_rate, c(50, 100))
})

test_that("UX usability summary rejects invalid data", {

  test_data <- data.frame(
    participant_id = "P01",
    task_id = "T1",
    success = 2,
    time_seconds = 20,
    errors = 0,
    satisfaction = 5
  )

  expect_error(ux_usability_summary(test_data))

  expect_error(
    ux_usability_summary(data.frame())
  )
})

test_that("usability summary includes participant experience profiles", {

  result <- ux_usability_summary(uxlearn::usability_test)

  expect_true("by_experience" %in% names(result))
  expect_equal(nrow(result$by_experience), 3)
  expect_equal(
    sort(result$by_experience$observations),
    c(50, 50, 50)
  )
})

test_that("usability summary includes task difficulty profiles", {

  result <- ux_usability_summary(uxlearn::usability_test)

  expect_true("by_difficulty" %in% names(result))
  expect_equal(nrow(result$by_difficulty), 5)
})

test_that("usability summary preserves overall observations", {

  result <- ux_usability_summary(uxlearn::usability_test)

  expect_equal(result$overall$observations, 150)
})
