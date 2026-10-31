
# Generate synthetic banking usability data
# Dataset: ux_banking
# 30 participants x 5 tasks = 150 observations

set.seed(20261031)

n_participants <- 30

banking_tasks <- data.frame(
  task_id = 1:5,
  task_name = c(
    "Check account balance",
    "Make a bank transfer",
    "Freeze a bank card",
    "Find a transaction",
    "Download an account statement"
  ),
  task_difficulty = c(
    "Easy",
    "Hard",
    "Medium",
    "Medium",
    "Easy"
  ),
  success_probability = c(
    0.95,
    0.75,
    0.85,
    0.80,
    0.90
  ),
  average_time = c(
    25,
    75,
    45,
    50,
    35
  ),
  error_rate = c(
    0.2,
    1.2,
    0.6,
    0.8,
    0.4
  ),
  average_satisfaction = c(
    5.8,
    4.2,
    5.0,
    4.6,
    5.4
  )
)

participant_experience <- sample(
  c("Novice", "Intermediate", "Experienced"),
  size = n_participants,
  replace = TRUE,
  prob = c(0.4, 0.4, 0.2)
)

ux_banking <- data.frame(
  participant_id = rep(
    sprintf("P%02d", 1:n_participants),
    each = 5
  ),
  task_id = rep(1:5, times = n_participants)
)

ux_banking$participant_experience <- rep(
  participant_experience,
  each = 5
)

ux_banking$task_name <- banking_tasks$task_name[
  ux_banking$task_id
]

ux_banking$task_difficulty <- banking_tasks$task_difficulty[
  ux_banking$task_id
]

ux_banking$success <- rbinom(
  nrow(ux_banking),
  size = 1,
  prob = banking_tasks$success_probability[
    ux_banking$task_id
  ]
)

ux_banking$time_seconds <- pmax(
  10,
  round(rnorm(
    nrow(ux_banking),
    mean = banking_tasks$average_time[
      ux_banking$task_id
    ],
    sd = 10
  ))
)

ux_banking$errors <- rpois(
  nrow(ux_banking),
  lambda = banking_tasks$error_rate[
    ux_banking$task_id
  ]
)

ux_banking$satisfaction <- pmin(
  7,
  pmax(
    1,
    round(rnorm(
      nrow(ux_banking),
      mean = banking_tasks$average_satisfaction[
        ux_banking$task_id
      ],
      sd = 0.8
    ))
  )
)

# Save the dataset in the package
usethis::use_data(
  ux_banking,
  overwrite = TRUE
)
