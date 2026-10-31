
# Generate synthetic e-government usability data
# Dataset: ux_egovernment
# 30 participants x 5 tasks = 150 observations

set.seed(20261102)

n_participants <- 30

egov_tasks <- data.frame(
  task_id = 1:5,

  task_name = c(
    "Find an administrative procedure",
    "Identify required documentation",
    "Submit an online application",
    "Check application status",
    "Download an official certificate"
  ),

  task_difficulty = c(
    "Easy",
    "Medium",
    "Hard",
    "Easy",
    "Medium"
  ),

  success_probability = c(
    0.90,
    0.80,
    0.65,
    0.90,
    0.85
  ),

  average_time = c(
    40,
    55,
    95,
    35,
    50
  ),

  error_rate = c(
    0.5,
    0.8,
    1.5,
    0.4,
    0.7
  ),

  average_satisfaction = c(
    5.2,
    4.8,
    4.0,
    5.4,
    5.0
  )
)

participant_experience <- sample(
  c("Novice", "Intermediate", "Experienced"),
  size = n_participants,
  replace = TRUE,
  prob = c(0.4, 0.4, 0.2)
)

ux_egovernment <- data.frame(
  participant_id = rep(
    sprintf("P%02d", 1:n_participants),
    each = 5
  ),

  task_id = rep(1:5, times = n_participants)
)

ux_egovernment$participant_experience <- rep(
  participant_experience,
  each = 5
)

ux_egovernment$task_name <- egov_tasks$task_name[
  ux_egovernment$task_id
]

ux_egovernment$task_difficulty <- egov_tasks$task_difficulty[
  ux_egovernment$task_id
]

ux_egovernment$success <- rbinom(
  nrow(ux_egovernment),
  size = 1,
  prob = egov_tasks$success_probability[
    ux_egovernment$task_id
  ]
)

ux_egovernment$time_seconds <- pmax(
  10,
  round(rnorm(
    nrow(ux_egovernment),
    mean = egov_tasks$average_time[
      ux_egovernment$task_id
    ],
    sd = 15
  ))
)

ux_egovernment$errors <- rpois(
  nrow(ux_egovernment),
  lambda = egov_tasks$error_rate[
    ux_egovernment$task_id
  ]
)

ux_egovernment$satisfaction <- pmin(
  7,
  pmax(
    1,
    round(rnorm(
      nrow(ux_egovernment),
      mean = egov_tasks$average_satisfaction[
        ux_egovernment$task_id
      ],
      sd = 0.8
    ))
  )
)

# Save the dataset in the package

usethis::use_data(
  ux_egovernment,
  overwrite = TRUE
)
