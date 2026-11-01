# Summarise usability testing results

Calculates key usability indicators, including task success, completion
time, errors and user satisfaction.

## Usage

``` r
ux_usability_summary(data)
```

## Arguments

- data:

  A data frame containing usability testing observations. It must
  include participant_id, task_id, success, time_seconds, errors and
  satisfaction.

## Value

A list containing:

- overall:

  Summary of all usability observations.

- by_task:

  Summary grouped by usability task.

- by_difficulty:

  Summary grouped by task difficulty, if available.

- by_experience:

  Summary grouped by participant experience, if available.

## Details

Task success is expressed as a percentage. Completion time is reported
for all attempts and for successfully completed tasks. Satisfaction is
measured using the supplied 1-7 scale.

## Examples

``` r
data(usability_test)
ux_usability_summary(usability_test)
#> $overall
#>   observations success_rate mean_time_seconds median_time_seconds
#> 1          150     66.66667            60.072               55.65
#>   mean_success_time_seconds mean_errors mean_satisfaction
#> 1                    53.981   0.7533333          4.266667
#> 
#> $by_task
#>   task_id              task_name observations success_rate mean_time_seconds
#> 1      T1         Find a product           30     83.33333          37.77000
#> 2      T2    Add product to cart           30     56.66667          50.78667
#> 3      T3      Create an account           30     60.00000          69.85000
#> 4      T4      Complete checkout           30     53.33333          84.34333
#> 5      T5 Find order information           30     80.00000          57.61000
#>   median_time_seconds mean_success_time_seconds mean_errors mean_satisfaction
#> 1                36.9                  35.68800   0.2000000          5.200000
#> 2                46.5                  46.08235   0.9000000          4.433333
#> 3                69.9                  65.28889   0.9666667          3.766667
#> 4                84.2                  76.38750   0.9666667          3.366667
#> 5                53.2                  55.21250   0.7333333          4.566667
#> 
#> $by_difficulty
#>   task_difficulty observations success_rate mean_time_seconds
#> 1             1.0           30     83.33333          37.77000
#> 2             2.0           30     56.66667          50.78667
#> 3             2.5           30     80.00000          57.61000
#> 4             3.0           30     60.00000          69.85000
#> 5             4.0           30     53.33333          84.34333
#>   median_time_seconds mean_success_time_seconds mean_errors mean_satisfaction
#> 1                36.9                  35.68800   0.2000000          5.200000
#> 2                46.5                  46.08235   0.9000000          4.433333
#> 3                53.2                  55.21250   0.7333333          4.566667
#> 4                69.9                  65.28889   0.9666667          3.766667
#> 5                84.2                  76.38750   0.9666667          3.366667
#> 
#> $by_experience
#>   participant_experience observations success_rate mean_time_seconds
#> 1               Advanced           50           76            54.200
#> 2               Beginner           50           64            61.978
#> 3           Intermediate           50           60            64.038
#>   median_time_seconds mean_success_time_seconds mean_errors mean_satisfaction
#> 1               51.55                  51.50000        0.70              4.66
#> 2               59.60                  56.60938        0.74              3.90
#> 3               60.70                  54.32000        0.82              4.24
#> 
```
