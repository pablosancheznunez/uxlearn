#' Calculate task completion time
#'
#' Calculates descriptive statistics for task completion times.
#'
#' @param x Numeric vector of completion times in seconds.
#'
#' @return A data frame with mean, median, standard deviation and range.
#'
#' @examples
#' ux_task_time(c(35, 42, 29, 50, 38))
#'
#' @export

ux_task_time <- function(x) {

  if (!is.numeric(x) || length(x) == 0 ||
      anyNA(x) || any(!is.finite(x)) || any(x < 0)) {
    stop("x must contain finite, non-negative numeric values.")
  }

  data.frame(
    mean = mean(x),
    median = median(x),
    sd = if (length(x) > 1) stats::sd(x) else NA_real_,
    min = min(x),
    max = max(x)
  )
}
