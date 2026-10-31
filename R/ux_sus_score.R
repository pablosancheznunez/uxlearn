#' Calculate System Usability Scale score
#'
#' Calculates the standard SUS score from ten item responses.
#'
#' @param x Numeric vector of ten responses (1 to 5).
#'
#' @return Numeric SUS score between 0 and 100.
#'
#' @examples
#' ux_sus_score(c(4, 3, 4, 2, 5, 3, 4, 2, 4, 3))
#'
#' @export

ux_sus_score <- function(x) {

  if (!is.numeric(x) || length(x) != 10 ||
      anyNA(x) || any(!is.finite(x)) ||
      any(x < 1 | x > 5) || any(x != floor(x))) {
    stop("x must contain exactly ten integer responses between 1 and 5.")
  }

  adjusted <- numeric(10)

  adjusted[c(TRUE, FALSE)] <- x[c(TRUE, FALSE)] - 1
  adjusted[c(FALSE, TRUE)] <- 5 - x[c(FALSE, TRUE)]

  sum(adjusted) * 2.5
}
