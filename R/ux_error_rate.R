#' Calculate usability error rate
#'
#' Calculates the percentage of interactions resulting in errors.
#'
#' @param errors Number of errors.
#' @param opportunities Number of opportunities for error.
#'
#' @return Numeric error rate expressed as a percentage.
#'
#' @examples
#' ux_error_rate(errors = 8, opportunities = 100)
#'
#' @export

ux_error_rate <- function(errors, opportunities) {

  if (length(errors) != 1 || length(opportunities) != 1 ||
      !is.numeric(errors) || !is.numeric(opportunities) ||
      is.na(errors) || is.na(opportunities) ||
      !is.finite(errors) || !is.finite(opportunities) ||
      errors < 0 || opportunities <= 0 ||
      errors > opportunities ||
      errors != floor(errors) ||
      opportunities != floor(opportunities)) {
    stop("Provide valid non-negative integer counts, with errors <= opportunities and opportunities > 0.")
  }

  (errors / opportunities) * 100
}
