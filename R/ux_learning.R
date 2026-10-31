
#' Generate UX Learning Exercises
#'
#' Creates educational exercises using usability testing data.
#'
#' @param data A usability dataset. Defaults to usability_test.
#' @param level Exercise difficulty: "beginner", "intermediate", or "advanced".
#'
#' @return A list containing learning objectives, usability results,
#' task-level analysis, interpretation and questions.
#'
#' @examples
#' ux_learning()
#' ux_learning(level = "intermediate")
#'
#' @export

ux_learning <- function(data = usability_test,
                        level = "beginner") {

  level <- match.arg(
    level,
    choices = c("beginner", "intermediate", "advanced")
  )

  required_columns <- c(
    "task_name", "success", "time_seconds",
    "errors", "satisfaction"
  )

  if (!all(required_columns %in% names(data))) {
    stop("The dataset must contain: ",
         paste(required_columns, collapse = ", "))
  }

  if (nrow(data) == 0) {
    stop("The dataset must contain at least one observation.")
  }

  success_rate <- mean(data$success, na.rm = TRUE) * 100
  average_time <- mean(data$time_seconds, na.rm = TRUE)
  average_errors <- mean(data$errors, na.rm = TRUE)
  average_satisfaction <- mean(data$satisfaction, na.rm = TRUE)

  task_analysis <- do.call(
    rbind,
    lapply(split(data, data$task_name), function(task) {
      data.frame(
        task_name = task$task_name[1],
        success_rate = round(mean(task$success, na.rm = TRUE) * 100, 2),
        average_time = round(mean(task$time_seconds, na.rm = TRUE), 2),
        average_errors = round(mean(task$errors, na.rm = TRUE), 2),
        average_satisfaction = round(
          mean(task$satisfaction, na.rm = TRUE), 2
        )
      )
    })
  )

  questions <- switch(
    level,

    beginner = c(
      "What percentage of tasks were completed successfully?",
      "What was the average task completion time?",
      "What does the error rate tell us about usability?"
    ),

    intermediate = c(
      "Which task presents the greatest usability challenge?",
      "How are task success and completion time related?",
      "What improvements would you prioritise?"
    ),

    advanced = c(
      "Critically evaluate the relationship between usability metrics.",
      "What methodological limitations affect these results?",
      "Design an evidence-based improvement strategy."
    )
  )

  interpretation <- c(
    if (success_rate < 70) {
      "Task success is relatively low. Investigate barriers to task completion."
    } else {
      "Task success is relatively high. Examine unsuccessful tasks for remaining problems."
    },

    if (average_satisfaction < 4) {
      "Satisfaction is relatively low. Explore possible causes of user dissatisfaction."
    } else {
      "Satisfaction is above the midpoint of the scale. Investigate opportunities for improvement."
    },

    if (average_errors > 1) {
      "The average number of errors suggests that error prevention deserves attention."
    } else {
      "The average number of errors is relatively low. Examine where errors still occur."
    }
  )

  list(
    title = "UX Learning Exercise",
    level = level,

    learning_objectives = c(
      "Understand usability metrics",
      "Interpret UX research results",
      "Support design decisions with evidence"
    ),

    results = list(
      success_rate = round(success_rate, 2),
      average_time = round(average_time, 2),
      average_errors = round(average_errors, 2),
      average_satisfaction = round(average_satisfaction, 2)
    ),

    task_analysis = task_analysis,
    interpretation = interpretation,
    questions = questions
  )
}

