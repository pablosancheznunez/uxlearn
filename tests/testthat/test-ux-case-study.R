
test_that("UX case studies generate the expected structure", {

  case <- ux_case_study()

  expect_equal(case$domain, "ecommerce")
  expect_equal(case$level, "beginner")
  expect_true(is.character(case$scenario))
  expect_true(is.character(case$challenge))
  expect_true(is.data.frame(case$task_analysis))
  expect_true(is.data.frame(case$recommendations))
})

test_that("UX case studies support all domains", {

  domains <- c(
    "ecommerce",
    "banking",
    "education",
    "e-government"
  )

  for (domain in domains) {

    case <- ux_case_study(domain = domain)

    expect_equal(case$domain, domain)
    expect_true(nzchar(case$title))
    expect_true(nzchar(case$scenario))
  }
})

test_that("UX case studies support all learning levels", {

  levels <- c(
    "beginner",
    "intermediate",
    "advanced"
  )

  for (level in levels) {

    case <- ux_case_study(level = level)

    expect_equal(case$level, level)
    expect_true(length(case$questions) > 0)
    expect_true(nzchar(case$learning_activity))
  }
})

test_that("UX case studies reject invalid domains and levels", {

  expect_error(
    ux_case_study(domain = "healthcare")
  )

  expect_error(
    ux_case_study(level = "expert")
  )
})

test_that("ux_case_study automatically selects the correct dataset", {

  ecommerce_case <- ux_case_study(domain = "ecommerce")
  banking_case <- ux_case_study(domain = "banking")
  education_case <- ux_case_study(domain = "education")
  egov_case <- ux_case_study(domain = "e-government")

  expect_equal(
    ecommerce_case$usability_results$success_rate,
    ux_learning(data = usability_test)$results$success_rate
  )

  expect_equal(
    banking_case$usability_results$success_rate,
    ux_learning(data = ux_banking)$results$success_rate
  )

  expect_equal(
    education_case$usability_results$success_rate,
    ux_learning(data = ux_education)$results$success_rate
  )

  expect_equal(
    egov_case$usability_results$success_rate,
    ux_learning(data = ux_egovernment)$results$success_rate
  )
})
