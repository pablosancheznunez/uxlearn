
# Generate synthetic online learning usability data
# Dataset: ux_education
# 30 participants x 5 tasks = 150 observations

set.seed(20261101)

n_participants <- 30

education_tasks <- data.frame(
  task_id = 1:5,

  task_name = c(
    "Find a learning resource",
    "Enrol in a course",
    "Submit an assignment",
    "Check learning progress",
    "Download a certificate"
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
    0.85,
    0.70,
    0.95,
    0.80
  ),

  average_time = c(
    35,
    50,
    85,
    30,
    55
  ),

  error_rate = c(
    0.4,
    0.6,
    1.3,
    0.2,
    0.8
  ),

  average_satisfaction = c(
    5.4,
    5.0,
    4.2,
    5.8,
    4.7
  )
)

participant_experience <- sample(
  c("Novice", "Intermediate", "Experienced"),
  size = n_participants,
  replace = TRUE,
  prob = c(0.4, 0.4, 0.2)
)

ux_education <- data.frame(
  participant_id = rep(
    sprintf("P%02d", 1:n_participants),
    each = 5
  ),

  task_id = rep(1:5, times = n_participants)
)

ux_education$participant_experience <- rep(
  participant_experience,
  each = 5
)

ux_education$task_name <- education_tasks$task_name[
  ux_education$task_id
]

ux_education$task_difficulty <- education_tasks$task_difficulty[
  ux_education$task_id
]

ux_education$success <- rbinom(
  nrow(ux_education),
  size = 1,
  prob = education_tasks$success_probability[
    ux_education$task_id
  ]
)

ux_education$time_seconds <- pmax(
  10,
  round(rnorm(
    nrow(ux_education),
    mean = education_tasks$average_time[
      ux_education$task_id
    ],
    sd = 12
  ))
)

ux_education$errors <- rpois(
  nrow(ux_education),
  lambda = education_tasks$error_rate[
    ux_education$task_id
  ]
)

ux_education$satisfaction <- pmin(
  7,
  pmax(
    1,
    round(rnorm(
      nrow(ux_education),
      mean = education_tasks$average_satisfaction[
        ux_education$task_id
      ],
      sd = 0.8
    ))
  )
)

# Save the dataset in the package

usethis::use_data(
  ux_education,
  overwrite = TRUE
)
