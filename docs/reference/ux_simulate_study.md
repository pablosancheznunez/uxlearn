# Simulate a UX usability study

Generates synthetic usability testing data based on participant
experience and task difficulty.

## Usage

``` r
ux_simulate_study(
  n_participants = 30,
  task_difficulty = c(1, 2, 3, 4, 2.5),
  seed = 2026
)
```

## Arguments

- n_participants:

  Number of simulated participants. Defaults to 30.

- task_difficulty:

  Numeric vector defining the difficulty of each task. Values must be
  positive.

- seed:

  Random seed for reproducibility.

## Value

A data frame with simulated usability observations.

## Details

The simulation models relationships between task difficulty, participant
experience, task success, completion time, errors and satisfaction.

The generated data are synthetic and do not represent observations from
real users.

## Examples

``` r
study <- ux_simulate_study()
head(study)
#>   participant_id task_id participant_experience task_name task_difficulty
#> 1            P01      T1           Intermediate    Task 1               1
#> 2            P02      T1               Beginner    Task 1               1
#> 3            P03      T1               Beginner    Task 1               1
#> 4            P04      T1               Advanced    Task 1               1
#> 5            P05      T1               Beginner    Task 1               1
#> 6            P06      T1               Advanced    Task 1               1
#>   success time_seconds errors satisfaction
#> 1       1         30.7      0            7
#> 2       0         36.4      1            4
#> 3       1         32.7      0            5
#> 4       1         22.3      0            7
#> 5       1         40.6      0            6
#> 6       1         39.6      0            6
```
