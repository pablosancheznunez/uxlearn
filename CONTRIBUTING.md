# Contributing

Thank you for helping improve uxlearn. Corrections, new exercises and case studies are welcome.

## Running the tests

- `R CMD build . && R CMD check --as-cran uxlearn_*.tar.gz`
- or `devtools::check()`.

## Changes that may be made without the maintainer's review

- Compatibility fixes for new versions of R or of the suggested packages, as long as every test still passes unchanged.
- Documentation and the website.

## Changes that always need the maintainer's review

- `R/ux_*.R` formulas for usability metrics, the datasets in `data/` and `data-raw/`, and the learning materials in `inst/learning-materials/`.
- Workflows, `.maintenance.json`, `CODEOWNERS` and this file.

Tests are never weakened or deleted to make them pass.
