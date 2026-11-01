# UXLearn

### An R Package for Learning User Experience

**Learn UX. Measure Experience. Design Better.**

**Website and documentation: <https://pablosancheznunez.com/uxlearn/>**

UXLearn is an open-source R package designed to support the teaching and
learning of User Experience (UX) through practical exercises, usability
metrics, data analysis, and reproducible simulations.

The package provides accessible tools for exploring how users interact
with digital products and services, interpreting usability results, and
understanding the principles behind UX evaluation.

## Features

### 1. UX Metrics

Calculate and explore fundamental usability indicators:

- Task success rate
- Task completion time
- Error rate
- System Usability Scale (SUS) score

### 2. Usability Analysis

Analyse usability studies through descriptive summaries:

- Overall study performance
- Results by task
- Results by task difficulty
- Results by participant experience

### 3. UX Study Simulation

Generate reproducible synthetic usability studies to explore
relationships between:

- Participant experience
- Task difficulty
- Task success
- Completion time
- User errors
- Satisfaction

### 4. Educational Dataset

UXLearn includes a synthetic usability dataset with 150 observations
across 30 participants and five tasks.

The dataset contains participant profiles, task characteristics, success
outcomes, completion times, errors, and satisfaction scores.

**All simulated observations are synthetic and do not represent real
users.**

### 5. UX Learning Exercises

Generate structured exercises at beginner, intermediate, and advanced
levels. Students can explore usability results, task-level analysis,
interpretations, and questions designed to develop their UX evaluation
skills.

``` r

exercise <- ux_learning(
  data = usability_test,
  level = "intermediate"
)
exercise$results
exercise$task_analysis
```

### 6. UX Recommendations and Case Studies

Explore data-driven recommendations and practical UX case studies across
e-commerce, digital banking, online education, and e-government.

``` r

ux_recommendations(usability_test)
ux_case_study(domain = "education", level = "beginner")
```

### 7. Educational Materials

UXLearn includes an educational workbook and an answer key to support
independent learning and practical classroom activities. \##
Installation

UXLearn is currently under development and is not yet available on CRAN.

Install it from GitHub:

``` r

# install.packages("remotes")
remotes::install_github("pablosancheznunez/uxlearn")
```

## Getting started

Load the package:

``` r

library(uxlearn)
```

### Calculate task success rate

``` r

success <- c(1, 1, 0, 1, 0, 1)

ux_task_success(success)
```

### Calculate task completion time

``` r

times <- c(45, 52, 61, 38, 70, 49)

ux_task_time(times)
```

### Calculate error rate

``` r

ux_error_rate(
  errors = 8,
  opportunities = 40
)
```

### Calculate a SUS score

``` r

responses <- c(4, 3, 4, 2, 5, 3, 4, 2, 5, 3)

ux_sus_score(responses)
```

### Simulate a usability study

``` r

study <- ux_simulate_study(
  n_participants = 30,
  seed = 2026
)

head(study)
```

### Summarise usability results

``` r

results <- ux_usability_summary(study)

results$overall
results$by_task
results$by_difficulty
results$by_experience
```

## Educational purpose

UXLearn aims to make UX evaluation more accessible to students,
educators, and researchers.

Its educational approach combines:

- Learning by doing.
- Reproducible data analysis.
- Practical interpretation of usability metrics.
- Exploration of user behaviour through simulated studies.
- Critical understanding of UX evaluation methods.

The package is intended as an open educational resource that can be used
in university courses, workshops, and independent learning.

## Accessing the learning materials

The package includes the UX Learning Workbook and its Answer Key. Use
[`ux_learning_materials()`](https://pablosancheznunez.com/uxlearn/reference/ux_learning_materials.md)
to locate the files:

``` r

# List all educational materials
ux_learning_materials()

# Open the workbook
ux_learning_materials("workbook", open = TRUE)

# Open the answer key
ux_learning_materials("answer_key", open = TRUE)
```

## Development status

UXLearn is under active development.

The current version includes initial usability metrics, descriptive
analysis functions, a synthetic educational dataset, and a reproducible
usability study simulator.

Automated tests are used to check the reliability of the implemented
functions.

## Contributing

Suggestions, feedback, and contributions are welcome.

Further information about contributing will be provided when the public
repository is available.

## License

The R package and its source code are distributed under the MIT License.

The educational materials in `inst/learning-materials/`, including the
UX Learning Workbook and Answer Key, are licensed under Creative Commons
Attribution 4.0 International (CC BY 4.0).

Synthetic datasets are provided for educational and illustrative
purposes. \## Citation

Sánchez-Núñez, P. (2026). *uxlearn: An R Package for Learning User
Experience* (Version 0.1.0) \[R package\].
<https://pablosancheznunez.com/uxlearn/>

Author: Pablo Sánchez-Núñez · ORCID
[0000-0001-7845-9506](https://orcid.org/0000-0001-7845-9506) ·
<https://pablosancheznunez.com>
