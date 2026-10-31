
test_that("UX learning generates a beginner exercise", {

  result <- ux_learning()

  expect_equal(result$title, "UX Learning Exercise")
  expect_equal(result$level, "beginner")
  expect_true(length(result$questions) > 0)
  expect_true(length(result$learning_objectives) > 0)
})

test_that("UX learning supports all difficulty levels", {

  beginner <- ux_learning(level = "beginner")
  intermediate <- ux_learning(level = "intermediate")
  advanced <- ux_learning(level = "advanced")

  expect_equal(beginner$level, "beginner")
  expect_equal(intermediate$level, "intermediate")
  expect_equal(advanced$level, "advanced")
})

test_that("UX learning calculates usability metrics", {

  result <- ux_learning()

  expect_true(is.numeric(result$results$success_rate))
  expect_true(is.numeric(result$results$average_time))
  expect_true(is.numeric(result$results$average_errors))
  expect_true(is.numeric(result$results$average_satisfaction))
})

test_that("UX learning includes task-level analysis", {

  result <- ux_learning()

  expect_true(is.data.frame(result$task_analysis))
  expect_equal(nrow(result$task_analysis), 5)
  expect_true("success_rate" %in% names(result$task_analysis))
})

test_that("UX learning generates interpretations", {

  result <- ux_learning()

  expect_true(length(result$interpretation) > 0)
  expect_true(all(nzchar(result$interpretation)))
})

test_that("UX learning rejects invalid difficulty levels", {

  expect_error(
    ux_learning(level = "expert")
  )
})

test_that("UX learning rejects datasets with missing columns", {

  invalid_data <- data.frame(
    task_name = c("Task 1", "Task 2"),
    success = c(1, 0)
  )

  expect_error(
    ux_learning(data = invalid_data)
  )
})

test_that("UX learning rejects empty datasets", {

  empty_data <- data.frame(
    task_name = character(),
    success = numeric(),
    time_seconds = numeric(),
    errors = numeric(),
    satisfaction = numeric()
  )

  expect_error(
    ux_learning(data = empty_data)
  )
})
