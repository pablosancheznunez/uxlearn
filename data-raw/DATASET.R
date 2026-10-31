
# UXLearn: Synthetic Usability Testing Dataset

# Reproducibility
set.seed(2026)

# 1. Generate participants with different experience levels

participants <- data.frame(
  participant_id = paste0("P", sprintf("%02d", 1:30)),
  participant_experience = sample(
    rep(c("Beginner", "Intermediate", "Advanced"), each = 10)
  )
)

# Assign a numerical skill level
participants$skill <- ifelse(
  participants$participant_experience == "Beginner", 0,
  ifelse(
    participants$participant_experience == "Intermediate", 0.7, 1.3
  )
)

# 2. Define usability tasks and their difficulty

tasks <- data.frame(
  task_id = paste0("T", 1:5),
  task_name = c(
    "Find a product",
    "Add product to cart",
    "Create an account",
    "Complete checkout",
    "Find order information"
  ),
  task_difficulty = c(1, 2, 3, 4, 2.5)
)

# 3. Create one observation per participant and task

usability_test <- expand.grid(
  participant_id = participants$participant_id,
  task_id = tasks$task_id,
  stringsAsFactors = FALSE
)

usability_test <- usability_test[
  order(usability_test$participant_id, usability_test$task_id),
]

# Add participant and task characteristics

participant_index <- match(
  usability_test$participant_id,
  participants$participant_id
)

task_index <- match(
  usability_test$task_id,
  tasks$task_id
)

usability_test$participant_experience <-
  participants$participant_experience[participant_index]

usability_test$task_name <- tasks$task_name[task_index]

usability_test$task_difficulty <-
  tasks$task_difficulty[task_index]

participant_skill <- participants$skill[participant_index]

# 4. Simulate task success
# More difficult tasks reduce the probability of success.
# More experienced participants have an advantage.

success_probability <- plogis(
  1.8 -
    0.65 * usability_test$task_difficulty +
    0.7 * participant_skill
)

usability_test$success <- rbinom(
  nrow(usability_test),
  size = 1,
  prob = success_probability
)

# 5. Simulate task completion time
# Failed attempts tend to take longer.

base_time <- 24 +
  13 * usability_test$task_difficulty -
  6 * participant_skill

usability_test$time_seconds <- round(
  rlnorm(
    nrow(usability_test),
    meanlog = log(base_time * ifelse(usability_test$success == 0, 1.25, 1)),
    sdlog = 0.25
  ),
  1
)

# 6. Simulate errors
# Difficult tasks and unsuccessful attempts tend to produce more errors.

error_rate <- pmax(
  0.1,
  0.15 +
    0.22 * usability_test$task_difficulty +
    0.35 * (1 - usability_test$success) -
    0.08 * participant_skill
)

usability_test$errors <- rpois(
  nrow(usability_test),
  lambda = error_rate
)

# 7. Simulate satisfaction
# Success and experience tend to improve satisfaction.
# Difficulty and errors tend to reduce it.

satisfaction_score <- 4.8 -
  0.45 * usability_test$task_difficulty +
  0.9 * usability_test$success -
  0.35 * usability_test$errors +
  0.25 * participant_skill +
  rnorm(nrow(usability_test), mean = 0, sd = 0.8)

usability_test$satisfaction <- pmin(
  7,
  pmax(1, round(satisfaction_score))
)

# 8. Export dataset to UXLearn

usethis::use_data(usability_test, overwrite = TRUE)

