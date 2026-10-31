
#' Summarise usability testing results
#'
#' Calculates key usability indicators, including task success,
#' completion time, errors and user satisfaction.
#'
#' @param data A data frame containing usability testing observations.
#' It must include participant_id, task_id, success,
#' time_seconds, errors and satisfaction.
#'
#' @return A list containing:
#' \describe{
#'   \item{overall}{Summary of all usability observations.}
#'   \item{by_task}{Summary grouped by usability task.}
#'   \item{by_difficulty}{Summary grouped by task difficulty, if available.}
#'   \item{by_experience}{Summary grouped by participant experience, if available.}
#' }
#'
#' @details
#' Task success is expressed as a percentage.
#' Completion time is reported for all attempts and
#' for successfully completed tasks.
#' Satisfaction is measured using the supplied 1-7 scale.
#'
#' @examples
#' data(usability_test)
#' ux_usability_summary(usability_test)
#'
#' @export
ux_usability_summary <- function(data) {

  # 1. Validate input data

  required <- c(
    "participant_id",
    "task_id",
    "success",
    "time_seconds",
    "errors",
    "satisfaction"
  )

  if (!is.data.frame(data)) {
    stop("data must be a data frame.")
  }

  if (!all(required %in% names(data))) {
    stop("data is missing one or more required columns.")
  }

  if (nrow(data) == 0) {
    stop("data must contain at least one observation.")
  }

  if (anyNA(data[required])) {
    stop("Required columns must not contain missing values.")
  }

  if (!is.numeric(data$success) ||
      !all(data$success %in% c(0, 1))) {
    stop("success must contain only 0 (failure) and 1 (success).")
  }

  if (!is.numeric(data$time_seconds) ||
      any(!is.finite(data$time_seconds)) ||
      any(data$time_seconds < 0)) {
    stop("time_seconds must contain finite, non-negative numbers.")
  }

  if (!is.numeric(data$errors) ||
      any(!is.finite(data$errors)) ||
      any(data$errors < 0)) {
    stop("errors must contain non-negative numbers.")
  }

  if (!is.numeric(data$satisfaction) ||
      any(!is.finite(data$satisfaction)) ||
      any(data$satisfaction < 1 | data$satisfaction > 7)) {
    stop("satisfaction must contain values between 1 and 7.")
  }

  # 2. Validate optional profile variables

  if ("task_difficulty" %in% names(data)) {
    if (!is.numeric(data$task_difficulty) ||
        any(!is.finite(data$task_difficulty)) ||
        any(data$task_difficulty <= 0)) {
      stop("task_difficulty must contain finite, positive numbers.")
    }
  }

  if ("participant_experience" %in% names(data)) {
    if (anyNA(data$participant_experience) ||
        any(trimws(as.character(data$participant_experience)) == "")) {
      stop("participant_experience must not contain missing or empty values.")
    }
  }

  # 3. Calculate usability indicators

  summarise_group <- function(x) {

    successful_times <- x$time_seconds[x$success == 1]

    mean_success_time <- if (length(successful_times) > 0) {
      mean(successful_times)
    } else {
      NA_real_
    }

    data.frame(
      observations = nrow(x),
      success_rate = mean(x$success) * 100,
      mean_time_seconds = mean(x$time_seconds),
      median_time_seconds = median(x$time_seconds),
      mean_success_time_seconds = mean_success_time,
      mean_errors = mean(x$errors),
      mean_satisfaction = mean(x$satisfaction)
    )
  }

  # 4. Summarise results by a selected variable

  summarise_by <- function(x, group_var) {

    groups <- split(x, x[[group_var]], drop = TRUE)

    result <- do.call(
      rbind,
      lapply(seq_along(groups), function(i) {

        group_data <- groups[[i]]

        summary <- summarise_group(group_data)

        summary[[group_var]] <- group_data[[group_var]][1]

        if (group_var == "task_id" &&
            "task_name" %in% names(x)) {
          summary$task_name <- as.character(group_data$task_name[1])
        }

        summary
      })
    )

    rownames(result) <- NULL

    extra_columns <- if (group_var == "task_id" &&
                         "task_name" %in% names(result)) {
      "task_name"
    } else {
      character(0)
    }

    result <- result[
      c(group_var, extra_columns,
        setdiff(names(result), c(group_var, extra_columns)))
    ]

    result
  }

  # 5. Generate summaries

  overall <- summarise_group(data)

  by_task <- summarise_by(data, "task_id")

  by_difficulty <- if ("task_difficulty" %in% names(data)) {
    summarise_by(data, "task_difficulty")
  } else {
    NULL
  }

  by_experience <- if ("participant_experience" %in% names(data)) {
    summarise_by(data, "participant_experience")
  } else {
    NULL
  }

  # 6. Return results

  list(
    overall = overall,
    by_task = by_task,
    by_difficulty = by_difficulty,
    by_experience = by_experience
  )
}
