# Calculate System Usability Scale score

Calculates the standard SUS score from ten item responses.

## Usage

``` r
ux_sus_score(x)
```

## Arguments

- x:

  Numeric vector of ten responses (1 to 5).

## Value

Numeric SUS score between 0 and 100.

## Examples

``` r
ux_sus_score(c(4, 3, 4, 2, 5, 3, 4, 2, 4, 3))
#> [1] 70
```
