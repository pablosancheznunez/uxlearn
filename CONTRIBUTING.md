# Contributing

Thank you for helping improve uxlearn. Corrections, new exercises and case studies are welcome.

## Running the tests

- `R CMD build . && R CMD check --as-cran uxlearn_*.tar.gz`
- or `devtools::check()`.

## Small changes (welcome as pull requests)

- Compatibility fixes for new versions of R or of the suggested packages, as long as every test still passes unchanged.
- Documentation and the website.

## Changes to discuss in an issue first

- `R/ux_*.R` formulas for usability metrics, the datasets in `data/` and `data-raw/`, and the learning materials in `inst/learning-materials/`.
- Workflows and this file.

Tests are never weakened or deleted to make them pass.
