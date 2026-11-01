# Calculate task completion time

Calculates descriptive statistics for task completion times.

## Usage

``` r
ux_task_time(x)
```

## Arguments

- x:

  Numeric vector of completion times in seconds.

## Value

A data frame with mean, median, standard deviation and range.

## Examples

``` r
ux_task_time(c(35, 42, 29, 50, 38))
#>   mean median       sd min max
#> 1 38.8     38 7.854935  29  50
```
