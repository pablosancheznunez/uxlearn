#' Calculate task success rate
#'
#' Calculates the percentage of successfully completed
#' usability testing tasks.
#'
#' @param x Numeric vector containing task outcomes.
#' Use 1 for success and 0 for failure.
#'
#' @return A numeric value representing the success rate.
#'
#' @examples
#' ux_task_success(c(1, 1, 0, 1, 1))
#'
#' @export

ux_task_success <- function(x) {

  if (!is.numeric(x) || length(x) == 0 || anyNA(x)) {
    stop("x must be a non-empty numeric vector without missing values.")
  }

  if (!all(x %in% c(0, 1))) {
    stop("x must contain only 0 (failure) and 1 (success).")
  }

  mean(x) * 100
}
