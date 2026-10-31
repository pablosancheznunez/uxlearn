
test_that("UX recommendations work with UX learning exercises", {

  exercise <- ux_learning()
  result <- ux_recommendations(exercise)

  expect_equal(
    result$title,
    "UX Learning Recommendations"
  )

  expect_true(
    is.data.frame(result$recommendations)
  )

  expect_equal(
    nrow(result$recommendations),
    5
  )
})

test_that("UX recommendations assign priority levels correctly", {

  exercise <- ux_learning()
  result <- ux_recommendations(exercise)

  tasks <- result$recommendations

  expect_equal(
    tasks$priority[tasks$success_rate < 80],
    rep("High", sum(tasks$success_rate < 80))
  )

  expect_equal(
    tasks$priority[
      tasks$success_rate >= 80 & tasks$success_rate < 90
    ],
    rep(
      "Medium",
      sum(tasks$success_rate >= 80 & tasks$success_rate < 90)
    )
  )

  expect_equal(
    tasks$priority[tasks$success_rate >= 90],
    rep("Low", sum(tasks$success_rate >= 90))
  )
})

test_that("UX recommendations include learning activities", {

  result <- ux_recommendations(ux_learning())

  expect_true(
    "learning_activity" %in% names(result$recommendations)
  )

  expect_true(
    all(nzchar(result$recommendations$learning_activity))
  )
})

test_that("UX recommendations reject invalid input", {

  expect_error(
    ux_recommendations("invalid")
  )

  expect_error(
    ux_recommendations(list(task_analysis = data.frame()))
  )
})
