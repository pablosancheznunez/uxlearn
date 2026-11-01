# Calculate task success rate

Calculates the percentage of successfully completed usability testing
tasks.

## Usage

``` r
ux_task_success(x)
```

## Arguments

- x:

  Numeric vector containing task outcomes. Use 1 for success and 0 for
  failure.

## Value

A numeric value representing the success rate.

## Examples

``` r
ux_task_success(c(1, 1, 0, 1, 1))
#> [1] 80
```
