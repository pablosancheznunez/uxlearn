# Synthetic Usability Testing Dataset

A simulated dataset designed for teaching and learning User Experience
(UX) research and usability evaluation.

## Usage

``` r
usability_test
```

## Format

A data frame with 150 rows and 9 variables:

- participant_id:

  Unique participant identifier.

- task_id:

  Unique task identifier.

- participant_experience:

  Simulated UX experience level: Beginner, Intermediate or Advanced.

- task_name:

  Description of the usability task.

- task_difficulty:

  Simulated task difficulty level.

- success:

  Task completion outcome (1 = success, 0 = failure).

- time_seconds:

  Time required to complete the task, in seconds.

- errors:

  Number of errors made during the task.

- satisfaction:

  Simulated satisfaction score (1-7).

## Source

Synthetic data generated for the UXLearn package.

## Details

The dataset contains 30 participants performing five usability tasks,
resulting in 150 observations.

The dataset contains synthetic observations generated using R. It does
not represent real participants or empirical usability testing results.

Task difficulty and participant experience are incorporated into the
simulation model to generate plausible relationships between task
success, completion time, errors and satisfaction.

The dataset can be used to practice usability metrics, descriptive
statistics, data visualization and UX research methods.

## Examples

``` r
data(usability_test)
head(usability_test)
#>     participant_id task_id participant_experience              task_name
#> 1              P01      T1               Advanced         Find a product
#> 31             P01      T2               Advanced    Add product to cart
#> 61             P01      T3               Advanced      Create an account
#> 91             P01      T4               Advanced      Complete checkout
#> 121            P01      T5               Advanced Find order information
#> 2              P02      T1               Advanced         Find a product
#>     task_difficulty success time_seconds errors satisfaction
#> 1               1.0       1         27.4      0            7
#> 31              2.0       0         41.5      1            4
#> 61              3.0       1         48.8      1            4
#> 91              4.0       1         52.1      1            5
#> 121             2.5       1         53.4      0            6
#> 2               1.0       1         39.6      0            6
```
