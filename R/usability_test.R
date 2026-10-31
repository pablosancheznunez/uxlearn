#' Synthetic Usability Testing Dataset
#'
#' A simulated dataset designed for teaching and learning
#' User Experience (UX) research and usability evaluation.
#'
#' The dataset contains 30 participants performing five
#' usability tasks, resulting in 150 observations.
#'
#' @format A data frame with 150 rows and 9 variables:
#' \describe{
#'   \item{participant_id}{Unique participant identifier.}
#'   \item{task_id}{Unique task identifier.}
#'   \item{participant_experience}{Simulated UX experience level: Beginner, Intermediate or Advanced.}
#'   \item{task_name}{Description of the usability task.}
#'   \item{task_difficulty}{Simulated task difficulty level.}
#'   \item{success}{Task completion outcome (1 = success, 0 = failure).}
#'   \item{time_seconds}{Time required to complete the task, in seconds.}
#'   \item{errors}{Number of errors made during the task.}
#'   \item{satisfaction}{Simulated satisfaction score (1-7).}
#' }
#'
#' @details
#' The dataset contains synthetic observations generated
#' using R. It does not represent real participants or
#' empirical usability testing results.
#'
#' Task difficulty and participant experience are incorporated
#' into the simulation model to generate plausible relationships
#' between task success, completion time, errors and satisfaction.
#'
#' The dataset can be used to practice usability metrics,
#' descriptive statistics, data visualization and UX research methods.
#'
#' @source Synthetic data generated for the UXLearn package.
#'
#' @examples
#' data(usability_test)
#' head(usability_test)
#'
"usability_test"
