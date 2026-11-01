# Generate UX Case Studies

Generates contextualised educational case studies using usability
testing data.

## Usage

``` r
ux_case_study(data = NULL, domain = "ecommerce", level = "beginner")
```

## Arguments

- data:

  A usability dataset. If NULL, the function automatically selects the
  dataset associated with the domain.

- domain:

  The digital product context: "ecommerce", "banking", "education", or
  "e-government".

- level:

  Exercise difficulty: "beginner", "intermediate", or "advanced".

## Value

A list containing the case study context, usability results,
recommendations, and learning activities.

## Examples

``` r
ux_case_study()
#> $title
#> [1] "UX Case Study: Online shopping platform"
#> 
#> $domain
#> [1] "ecommerce"
#> 
#> $level
#> [1] "beginner"
#> 
#> $organisation
#> [1] "An online retail company"
#> 
#> $product
#> [1] "Online shopping platform"
#> 
#> $scenario
#> [1] "The company wants to improve its online shopping experience and reduce difficulties during the product discovery and purchasing process."
#> 
#> $challenge
#> [1] "Users experience difficulties when navigating the platform and completing essential shopping tasks."
#> 
#> $learning_objectives
#> [1] "Understand usability metrics"          
#> [2] "Interpret UX research results"         
#> [3] "Support design decisions with evidence"
#> 
#> $usability_results
#> $usability_results$success_rate
#> [1] 66.67
#> 
#> $usability_results$average_time
#> [1] 60.07
#> 
#> $usability_results$average_errors
#> [1] 0.75
#> 
#> $usability_results$average_satisfaction
#> [1] 4.27
#> 
#> 
#> $task_analysis
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
#> $questions
#> [1] "Which tasks have the lowest success rates?"
#> [2] "What usability problems can you identify?" 
#> [3] "Which improvement would you suggest first?"
#> 
#> $learning_activity
#> [1] "Identify the three main usability problems and propose one improvement for each."
#> 
ux_case_study(domain = "banking", level = "advanced")
#> $title
#> [1] "UX Case Study: Digital banking application"
#> 
#> $domain
#> [1] "banking"
#> 
#> $level
#> [1] "advanced"
#> 
#> $organisation
#> [1] "A retail banking institution"
#> 
#> $product
#> [1] "Digital banking application"
#> 
#> $scenario
#> [1] "The bank is reviewing its mobile application to make everyday financial operations easier and more efficient for its customers."
#> 
#> $challenge
#> [1] "Users encounter usability barriers when accessing account information and completing financial operations."
#> 
#> $learning_objectives
#> [1] "Understand usability metrics"          
#> [2] "Interpret UX research results"         
#> [3] "Support design decisions with evidence"
#> 
#> $usability_results
#> $usability_results$success_rate
#> [1] 88
#> 
#> $usability_results$average_time
#> [1] 45.66
#> 
#> $usability_results$average_errors
#> [1] 0.59
#> 
#> $usability_results$average_satisfaction
#> [1] 5.02
#> 
#> 
#> $task_analysis
#>                                                   task_name success_rate
#> Check account balance                 Check account balance        96.67
#> Download an account statement Download an account statement        96.67
#> Find a transaction                       Find a transaction        90.00
#> Freeze a bank card                       Freeze a bank card        86.67
#> Make a bank transfer                   Make a bank transfer        70.00
#>                               average_time average_errors average_satisfaction
#> Check account balance                26.70           0.13                 5.80
#> Download an account statement        37.03           0.33                 5.27
#> Find a transaction                   48.17           0.87                 4.47
#> Freeze a bank card                   43.90           0.67                 5.07
#> Make a bank transfer                 72.50           0.97                 4.50
#> 
#> $recommendations
#>                       task_name success_rate average_time average_errors
#> 1          Make a bank transfer        70.00        72.50           0.97
#> 2            Freeze a bank card        86.67        43.90           0.67
#> 3            Find a transaction        90.00        48.17           0.87
#> 4         Check account balance        96.67        26.70           0.13
#> 5 Download an account statement        96.67        37.03           0.33
#>   average_satisfaction priority
#> 1                 4.50     High
#> 2                 5.07   Medium
#> 3                 4.47      Low
#> 4                 5.80      Low
#> 5                 5.27      Low
#>                                                            recommendation
#> 1     Investigate task barriers, navigation and interaction difficulties.
#> 2 Review the interaction flow and identify opportunities for improvement.
#> 3    Examine remaining usability issues and opportunities for refinement.
#> 4    Examine remaining usability issues and opportunities for refinement.
#> 5    Examine remaining usability issues and opportunities for refinement.
#>                                                      learning_activity
#> 1   Conduct a task analysis and identify potential usability barriers.
#> 2   Compare task performance and propose alternative design solutions.
#> 3 Evaluate the experience and identify opportunities for optimisation.
#> 4 Evaluate the experience and identify opportunities for optimisation.
#> 5 Evaluate the experience and identify opportunities for optimisation.
#> 
#> $questions
#> [1] "Critically evaluate the evidence and its limitations."            
#> [2] "Develop a prioritised, evidence-based redesign strategy."         
#> [3] "Define indicators to evaluate the effectiveness of your proposal."
#> 
#> $learning_activity
#> [1] "Prepare an evidence-based UX intervention. Prioritise design changes and define a plan to evaluate their impact."
#> 
```
