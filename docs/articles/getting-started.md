# Getting Started with uxlearn

## Introduction

User Experience (UX) evaluation is an essential part of designing and
improving digital products and services. Understanding how users
interact with an interface requires collecting, analysing and
interpreting usability data.

**uxlearn** is an R package designed to support the teaching and
learning of UX evaluation. It combines usability metrics, educational
exercises, synthetic datasets and practical case studies.

The package aims to help students develop practical skills in:

- Understanding usability metrics.
- Analysing user performance.
- Identifying usability problems.
- Interpreting quantitative results.
- Translating findings into design recommendations.

All datasets included in this tutorial are synthetic. They are designed
for educational purposes and do not represent real users or empirical
research findings.

## Getting started

Load the package:

``` r

library(uxlearn)
```

## Exploring the educational datasets

The package includes four synthetic usability datasets representing
different digital environments:

- E-commerce.
- Digital banking.
- Online education.
- E-government.

Each dataset contains 150 observations from 30 simulated participants
completing five tasks.

``` r

data("usability_test")
data("ux_banking")
data("ux_education")
data("ux_egovernment")

dim(usability_test)
#> [1] 150   9
dim(ux_banking)
#> [1] 150   9
dim(ux_education)
#> [1] 150   9
dim(ux_egovernment)
#> [1] 150   9
```

Explore the online shopping dataset:

``` r

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

The datasets share a common structure, including participant
identifiers, task names, task success, completion time, errors and
satisfaction scores.

## Understanding UX metrics

Usability metrics provide quantitative information about the interaction
between users and digital products.

The datasets included in uxlearn allow students to explore four
fundamental dimensions:

- **Task success:** whether users complete a task successfully.
- **Task time:** how long users take to complete a task.
- **Errors:** the number of errors made during interaction.
- **Satisfaction:** users’ reported satisfaction.

For example, calculate the overall task success rate:

``` r

mean(usability_test$success) * 100
#> [1] 66.66667
```

Calculate average task completion time:

``` r

mean(usability_test$time_seconds)
#> [1] 60.072
```

Calculate average errors:

``` r

mean(usability_test$errors)
#> [1] 0.7533333
```

Calculate average satisfaction:

``` r

mean(usability_test$satisfaction)
#> [1] 4.266667
```

These metrics should be interpreted together. A high task success rate
does not necessarily imply an efficient or satisfactory experience.

## Learning UX through practical exercises

The
[`ux_learning()`](https://pablosancheznunez.com/uxlearn/reference/ux_learning.md)
function generates structured learning exercises based on usability
data.

Exercises are available at three levels:

- Beginner.
- Intermediate.
- Advanced.

For example, generate an intermediate exercise using the e-commerce
dataset:

``` r

exercise <- ux_learning(
  data = usability_test,
  level = "intermediate"
)

exercise$results
#> $success_rate
#> [1] 66.67
#> 
#> $average_time
#> [1] 60.07
#> 
#> $average_errors
#> [1] 0.75
#> 
#> $average_satisfaction
#> [1] 4.27
```

Explore the task-level analysis:

``` r

exercise$task_analysis
#>                                     task_name success_rate average_time
#> Add product to cart       Add product to cart        56.67        50.79
#> Complete checkout           Complete checkout        53.33        84.34
#> Create an account           Create an account        60.00        69.85
#> Find a product                 Find a product        83.33        37.77
#> Find order information Find order information        80.00        57.61
#>                        average_errors average_satisfaction
#> Add product to cart              0.90                 4.43
#> Complete checkout                0.97                 3.37
#> Create an account                0.97                 3.77
#> Find a product                   0.20                 5.20
#> Find order information           0.73                 4.57
```

The exercise includes quantitative results, interpretations and
questions designed to encourage students to analyse usability findings.

### Accessing the learning materials

UXLearn includes an educational workbook and an answer key designed to
support independent learning and practical UX evaluation.

The
[`ux_learning_materials()`](https://pablosancheznunez.com/uxlearn/reference/ux_learning_materials.md)
function locates these resources within the installed package.

List the available materials:

``` r

materials <- ux_learning_materials()
#> UX Learning Materials
#> 
#>                                                                                                                   workbook 
#> "C:/Users/psanc/AppData/Local/Temp/RtmpALO2Dy/temp_libpath10503f7b5437/uxlearn/learning-materials/UX-Learning-Workbook.md" 
#>                                                                                                                 answer_key 
#>           "C:/Users/psanc/AppData/Local/Temp/RtmpALO2Dy/temp_libpath10503f7b5437/uxlearn/learning-materials/Answer-Key.md"
materials
#>                                                                                                                   workbook 
#> "C:/Users/psanc/AppData/Local/Temp/RtmpALO2Dy/temp_libpath10503f7b5437/uxlearn/learning-materials/UX-Learning-Workbook.md" 
#>                                                                                                                 answer_key 
#>           "C:/Users/psanc/AppData/Local/Temp/RtmpALO2Dy/temp_libpath10503f7b5437/uxlearn/learning-materials/Answer-Key.md"
```

You can also open a specific resource directly:

``` r

ux_learning_materials("workbook", open = TRUE)
ux_learning_materials("answer_key", open = TRUE)
```

## Generating UX recommendations

The
[`ux_recommendations()`](https://pablosancheznunez.com/uxlearn/reference/ux_recommendations.md)
function transforms the results of a learning exercise into structured
recommendations and learning activities.

``` r

recommendations <- ux_recommendations(exercise)

recommendations$recommendations
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
```

Tasks are assigned an educational priority according to their observed
success rate:

- **High:** below 80%.
- **Medium:** from 80% to below 90%.
- **Low:** 90% or above.

These thresholds are illustrative teaching rules rather than universal
usability benchmarks.

Students can use the recommendations to identify usability barriers,
compare alternative design solutions and propose improvements.

## Exploring practical case studies

The
[`ux_case_study()`](https://pablosancheznunez.com/uxlearn/reference/ux_case_study.md)
function creates contextualised UX case studies using the package’s
educational datasets.

Four domains are available.

### E-commerce

``` r

ecommerce_case <- ux_case_study(
  domain = "ecommerce",
  level = "beginner"
)

ecommerce_case$title
#> [1] "UX Case Study: Online shopping platform"
ecommerce_case$usability_results
#> $success_rate
#> [1] 66.67
#> 
#> $average_time
#> [1] 60.07
#> 
#> $average_errors
#> [1] 0.75
#> 
#> $average_satisfaction
#> [1] 4.27
```

### Digital banking

``` r

banking_case <- ux_case_study(
  domain = "banking",
  level = "intermediate"
)

banking_case$title
#> [1] "UX Case Study: Digital banking application"
banking_case$usability_results
#> $success_rate
#> [1] 88
#> 
#> $average_time
#> [1] 45.66
#> 
#> $average_errors
#> [1] 0.59
#> 
#> $average_satisfaction
#> [1] 5.02
```

### Online education

``` r

education_case <- ux_case_study(
  domain = "education",
  level = "advanced"
)

education_case$title
#> [1] "UX Case Study: Online learning platform"
education_case$usability_results
#> $success_rate
#> [1] 87.33
#> 
#> $average_time
#> [1] 50.51
#> 
#> $average_errors
#> [1] 0.7
#> 
#> $average_satisfaction
#> [1] 5.01
```

### E-government

``` r

egovernment_case <- ux_case_study(
  domain = "e-government",
  level = "advanced"
)

egovernment_case$title
#> [1] "UX Case Study: Digital public administration service"
egovernment_case$usability_results
#> $success_rate
#> [1] 84.67
#> 
#> $average_time
#> [1] 55.51
#> 
#> $average_errors
#> [1] 0.86
#> 
#> $average_satisfaction
#> [1] 4.92
```

Each case study combines a practical context, usability results,
recommendations and educational activities.

## Suggested learning activities

The following activities can be used in university courses, workshops
and independent learning.

**Activity 1. Understanding usability**

Calculate task success, average completion time and errors for a
selected dataset. Explain what each metric reveals about the user
experience.

**Activity 2. Identifying usability problems**

Use
[`ux_learning()`](https://pablosancheznunez.com/uxlearn/reference/ux_learning.md)
to analyse a dataset. Identify the tasks with the lowest success rates
and discuss possible causes.

**Activity 3. Prioritising design improvements**

Generate recommendations with
[`ux_recommendations()`](https://pablosancheznunez.com/uxlearn/reference/ux_recommendations.md).
Justify which usability problems should be addressed first.

**Activity 4. Comparing digital environments**

Compare the four case studies. Discuss how usability challenges differ
between e-commerce, banking, education and public administration.

**Activity 5. Evidence-based design**

Propose an interface improvement based on the observed usability
results. Explain which metrics could be used to evaluate whether the
proposed improvement works.

## Conclusions

The uxlearn package provides an educational environment for exploring UX
evaluation through synthetic datasets, usability metrics, structured
exercises and practical case studies.

By combining quantitative analysis with guided interpretation and design
recommendations, the package supports a progressive approach to learning
UX evaluation.

The package is intended for teaching, learning and experimentation. Its
synthetic datasets should not be interpreted as empirical evidence about
real users or digital services.
