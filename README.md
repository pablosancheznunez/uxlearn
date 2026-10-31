
# UXLearn

### An Open R Toolkit for Learning User Experience

**Learn UX. Measure Experience. Design Better.**

UXLearn is an open-source R package designed to support the teaching and learning of User Experience (UX) through practical exercises, usability metrics, data analysis, and reproducible simulations.

The package provides accessible tools for exploring how users interact with digital products and services, interpreting usability results, and understanding the principles behind UX evaluation.

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

Generate reproducible synthetic usability studies to explore relationships between:

- Participant experience
- Task difficulty
- Task success
- Completion time
- User errors
- Satisfaction

### 4. Educational Dataset

UXLearn includes a synthetic usability dataset with 150 observations across 30 participants and five tasks.

The dataset contains participant profiles, task characteristics, success outcomes, completion times, errors, and satisfaction scores.

**All simulated observations are synthetic and do not represent real users.**

## Installation

UXLearn is currently under development and is not yet available on CRAN.

Once the GitHub repository is publicly available, the package can be installed using:

```r
# install.packages("remotes")
remotes::install_github("YOUR-USERNAME/uxlearn")
```

Replace `YOUR-USERNAME` with the GitHub account hosting the repository.

## Getting started

Load the package:

```r
library(uxlearn)
```

### Calculate task success rate

```r
success <- c(1, 1, 0, 1, 0, 1)

ux_task_success(success)
```

### Calculate task completion time

```r
times <- c(45, 52, 61, 38, 70, 49)

ux_task_time(times)
```

### Calculate error rate

```r
ux_error_rate(
  errors = 8,
  opportunities = 40
)
```

### Calculate a SUS score

```r
responses <- c(4, 3, 4, 2, 5, 3, 4, 2, 5, 3)

ux_sus_score(responses)
```

### Simulate a usability study

```r
study <- ux_simulate_study(
  n_participants = 30,
  seed = 2026
)

head(study)
```

### Summarise usability results

```r
results <- ux_usability_summary(study)

results$overall
results$by_task
results$by_difficulty
results$by_experience
```

## Educational purpose

UXLearn aims to make UX evaluation more accessible to students, educators, and researchers.

Its educational approach combines:

- Learning by doing.
- Reproducible data analysis.
- Practical interpretation of usability metrics.
- Exploration of user behaviour through simulated studies.
- Critical understanding of UX evaluation methods.

The package is intended as an open educational resource that can be used in university courses, workshops, and independent learning.

## Development status

UXLearn is under active development.

The current version includes initial usability metrics, descriptive analysis functions, a synthetic educational dataset, and a reproducible usability study simulator.

Automated tests are used to check the reliability of the implemented functions.

## Contributing

Suggestions, feedback, and contributions are welcome.

Further information about contributing will be provided when the public repository is available.

## License

UXLearn is intended to be distributed under the MIT License.

## Citation

Citation information will be provided when the package reaches its first public release.
