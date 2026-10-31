
#' Generate Educational UX Recommendations
#'
#' Generates learning recommendations based on task-level
#' usability results from a UX learning exercise.
#'
#' @param exercise An object returned by ux_learning().
#'
#' @return A list containing a summary and prioritised
#' educational recommendations.
#'
#' @details
#' Priority levels are based on task success rates:
#' High: below 80 percent.
#' Medium: from 80 to below 90 percent.
#' Low: 90 percent or above.
#'
#' These thresholds are educational guidelines, not
#' universal usability benchmarks.
#'
#' @examples
#' exercise <- ux_learning()
#' ux_recommendations(exercise)
#'
#' @export

ux_recommendations <- function(exercise) {

  if (!is.list(exercise) ||
      is.null(exercise$task_analysis)) {
    stop("Please provide an object returned by ux_learning().")
  }

  tasks <- exercise$task_analysis

  required_columns <- c("task_name", "success_rate")

  if (!is.data.frame(tasks) ||
      !all(required_columns %in% names(tasks))) {
    stop("The exercise must contain task-level success results.")
  }

  if (nrow(tasks) == 0) {
    stop("The exercise must contain at least one task.")
  }

  tasks$priority <- ifelse(
    tasks$success_rate < 80,
    "High",
    ifelse(tasks$success_rate < 90, "Medium", "Low")
  )

  tasks$recommendation <- ifelse(
    tasks$priority == "High",
    "Investigate task barriers, navigation and interaction difficulties.",
    ifelse(
      tasks$priority == "Medium",
      "Review the interaction flow and identify opportunities for improvement.",
      "Examine remaining usability issues and opportunities for refinement."
    )
  )

  tasks$learning_activity <- ifelse(
    tasks$priority == "High",
    "Conduct a task analysis and identify potential usability barriers.",
    ifelse(
      tasks$priority == "Medium",
      "Compare task performance and propose alternative design solutions.",
      "Evaluate the experience and identify opportunities for optimisation."
    )
  )

  tasks <- tasks[
    order(tasks$success_rate),
    ,
    drop = FALSE
  ]

  rownames(tasks) <- NULL

  list(
    title = "UX Learning Recommendations",
    summary = paste(
      sum(tasks$priority == "High"),
      "tasks require high educational priority."
    ),
    recommendations = tasks
  )
}
