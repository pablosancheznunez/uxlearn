# Calculate usability error rate

Calculates the percentage of interactions resulting in errors.

## Usage

``` r
ux_error_rate(errors, opportunities)
```

## Arguments

- errors:

  Number of errors.

- opportunities:

  Number of opportunities for error.

## Value

Numeric error rate expressed as a percentage.

## Examples

``` r
ux_error_rate(errors = 8, opportunities = 100)
#> [1] 8
```
