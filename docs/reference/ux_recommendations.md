# Generate Educational UX Recommendations

Generates learning recommendations based on task-level usability results
from a UX learning exercise.

## Usage

``` r
ux_recommendations(exercise)
```

## Arguments

- exercise:

  An object returned by ux_learning().

## Value

A list containing a summary and prioritised educational recommendations.

## Details

Priority levels are based on task success rates: High: below 80 percent.
Medium: from 80 to below 90 percent. Low: 90 percent or above.

These thresholds are educational guidelines, not universal usability
benchmarks.

## Examples

``` r
exercise <- ux_learning()
ux_recommendations(exercise)
#> $title
#> [1] "UX Learning Recommendations"
#> 
#> $summary
#> [1] "3 tasks require high educational priority."
#> 
#> $recommendations
#>                task_name success_rate average_time average_errors
#> 1      Complete checkout        53.33        84.34           0.97
#> 2    Add product to cart        56.67        50.79           0.90
#> 3      Create an account        60.00        69.85           0.97
#> 4 Find order information        80.00        57.61           0.73
#> 5         Find a product        83.33        37.77           0.20
#>   average_satisfaction priority
#> 1                 3.37     High
#> 2                 4.43     High
#> 3                 3.77     High
#> 4                 4.57   Medium
#> 5                 5.20   Medium
#>                                                            recommendation
#> 1     Investigate task barriers, navigation and interaction difficulties.
#> 2     Investigate task barriers, navigation and interaction difficulties.
#> 3     Investigate task barriers, navigation and interaction difficulties.
#> 4 Review the interaction flow and identify opportunities for improvement.
#> 5 Review the interaction flow and identify opportunities for improvement.
#>                                                    learning_activity
#> 1 Conduct a task analysis and identify potential usability barriers.
#> 2 Conduct a task analysis and identify potential usability barriers.
#> 3 Conduct a task analysis and identify potential usability barriers.
#> 4 Compare task performance and propose alternative design solutions.
#> 5 Compare task performance and propose alternative design solutions.
#> 
```
