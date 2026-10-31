
test_that("UX simulator generates the expected number of observations", {

  study <- ux_simulate_study()

  expect_equal(nrow(study), 150)
  expect_equal(ncol(study), 9)
})

test_that("UX simulator produces reproducible results", {

  study_1 <- ux_simulate_study(seed = 2026)
  study_2 <- ux_simulate_study(seed = 2026)

  expect_identical(study_1, study_2)
})

test_that("UX simulator accepts custom study parameters", {

  study <- ux_simulate_study(
    n_participants = 20,
    task_difficulty = c(1, 3, 5)
  )

  expect_equal(nrow(study), 60)
  expect_equal(length(unique(study$participant_id)), 20)
  expect_equal(length(unique(study$task_id)), 3)
})

test_that("UX simulator rejects invalid parameters", {

  expect_error(ux_simulate_study(n_participants = 0))

  expect_error(ux_simulate_study(n_participants = 2.5))

  expect_error(ux_simulate_study(task_difficulty = c(1, -2)))

  expect_error(ux_simulate_study(seed = -1))
})
