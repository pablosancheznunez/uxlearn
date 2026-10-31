
#' Simulate a UX usability study
#'
#' Generates synthetic usability testing data based on
#' participant experience and task difficulty.
#'
#' @param n_participants Number of simulated participants.
#' Defaults to 30.
#' @param task_difficulty Numeric vector defining the difficulty
#' of each task. Values must be positive.
#' @param seed Random seed for reproducibility.
#'
#' @return A data frame with simulated usability observations.
#'
#' @details
#' The simulation models relationships between task difficulty,
#' participant experience, task success, completion time,
#' errors and satisfaction.
#'
#' The generated data are synthetic and do not represent
#' observations from real users.
#'
#' @examples
#' study <- ux_simulate_study()
#' head(study)
#' @importFrom stats median plogis rbinom rlnorm rnorm rpois
#' @export
ux_simulate_study <- function(
    n_participants = 30,
    task_difficulty = c(1, 2, 3, 4, 2.5),
    seed = 2026
) {

  # 1. Validate parameters

  if (length(n_participants) != 1 ||
      !is.numeric(n_participants) ||
      !is.finite(n_participants) ||
      n_participants < 1 ||
      n_participants != floor(n_participants)) {
    stop("n_participants must be a positive integer.")
  }

  if (!is.numeric(task_difficulty) ||
      length(task_difficulty) == 0 ||
      any(!is.finite(task_difficulty)) ||
      any(task_difficulty <= 0)) {
    stop("task_difficulty must contain positive finite numbers.")
  }

  if (length(seed) != 1 ||
      !is.numeric(seed) ||
      !is.finite(seed) ||
      seed < 0 ||
      seed != floor(seed) ||
      seed > .Machine$integer.max) {
    stop("seed must be a non-negative integer.")
  }

  # 2. Set random seed

  set.seed(seed)

  # 3. Define participant experience

  experience_levels <- c(
    "Beginner",
    "Intermediate",
    "Advanced"
  )

  experience <- sample(
    rep(experience_levels, length.out = n_participants)
  )

  participants <- data.frame(
    participant_id = paste0(
      "P",
      sprintf("%02d", seq_len(n_participants))
    ),
    participant_experience = experience
  )

  participants$skill <- ifelse(
    participants$participant_experience == "Beginner", 0,
    ifelse(
      participants$participant_experience == "Intermediate",
      0.7,
      1.3
    )
  )

  # 4. Define tasks

  tasks <- data.frame(
    task_id = paste0("T", seq_along(task_difficulty)),
    task_name = paste("Task", seq_along(task_difficulty)),
    task_difficulty = task_difficulty
  )

  # 5. Generate participant-task observations

  study <- expand.grid(
    participant_id = participants$participant_id,
    task_id = tasks$task_id,
    stringsAsFactors = FALSE
  )

  participant_index <- match(
    study$participant_id,
    participants$participant_id
  )

  task_index <- match(
    study$task_id,
    tasks$task_id
  )

  study$participant_experience <-
    participants$participant_experience[participant_index]

  study$task_name <- tasks$task_name[task_index]

  study$task_difficulty <-
    tasks$task_difficulty[task_index]

  participant_skill <- participants$skill[participant_index]

  # 6. Simulate task success

  success_probability <- plogis(
    1.8 -
      0.65 * study$task_difficulty +
      0.7 * participant_skill
  )

  study$success <- rbinom(
    nrow(study),
    size = 1,
    prob = success_probability
  )

  # 7. Simulate completion time

  base_time <- 24 +
    13 * study$task_difficulty -
    6 * participant_skill

  study$time_seconds <- round(
    rlnorm(
      nrow(study),
      meanlog = log(
        base_time *
          ifelse(study$success == 0, 1.25, 1)
      ),
      sdlog = 0.25
    ),
    1
  )

  # 8. Simulate errors

  error_rate <- pmax(
    0.1,
    0.15 +
      0.22 * study$task_difficulty +
      0.35 * (1 - study$success) -
      0.08 * participant_skill
  )

  study$errors <- rpois(
    nrow(study),
    lambda = error_rate
  )

  # 9. Simulate satisfaction

  satisfaction_score <- 4.8 -
    0.45 * study$task_difficulty +
    0.9 * study$success -
    0.35 * study$errors +
    0.25 * participant_skill +
    rnorm(nrow(study), mean = 0, sd = 0.8)

  study$satisfaction <- pmin(
    7,
    pmax(1, round(satisfaction_score))
  )

  # 10. Return simulated study

  study
}
