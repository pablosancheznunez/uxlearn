# Generate UX Learning Exercises

Creates educational exercises using usability testing data.

## Usage

``` r
ux_learning(data = usability_test, level = "beginner")
```

## Arguments

- data:

  A usability dataset. Defaults to usability_test.

- level:

  Exercise difficulty: "beginner", "intermediate", or "advanced".

## Value

A list containing learning objectives, usability results, task-level
analysis, interpretation and questions.

## Examples

``` r
ux_learning()
#> $title
#> [1] "UX Learning Exercise"
#> 
#> $level
#> [1] "beginner"
#> 
#> $learning_objectives
#> [1] "Understand usability metrics"          
#> [2] "Interpret UX research results"         
#> [3] "Support design decisions with evidence"
#> 
#> $results
#> $results$success_rate
#> [1] 66.67
#> 
#> $results$average_time
#> [1] 60.07
#> 
#> $results$average_errors
#> [1] 0.75
#> 
#> $results$average_satisfaction
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
#> $interpretation
#> [1] "Task success is relatively low. Investigate barriers to task completion."                   
#> [2] "Satisfaction is above the midpoint of the scale. Investigate opportunities for improvement."
#> [3] "The average number of errors is relatively low. Examine where errors still occur."          
#> 
#> $questions
#> [1] "What percentage of tasks were completed successfully?"
#> [2] "What was the average task completion time?"           
#> [3] "What does the error rate tell us about usability?"    
#> 
ux_learning(level = "intermediate")
#> $title
#> [1] "UX Learning Exercise"
#> 
#> $level
#> [1] "intermediate"
#> 
#> $learning_objectives
#> [1] "Understand usability metrics"          
#> [2] "Interpret UX research results"         
#> [3] "Support design decisions with evidence"
#> 
#> $results
#> $results$success_rate
#> [1] 66.67
#> 
#> $results$average_time
#> [1] 60.07
#> 
#> $results$average_errors
#> [1] 0.75
#> 
#> $results$average_satisfaction
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
#> $interpretation
#> [1] "Task success is relatively low. Investigate barriers to task completion."                   
#> [2] "Satisfaction is above the midpoint of the scale. Investigate opportunities for improvement."
#> [3] "The average number of errors is relatively low. Examine where errors still occur."          
#> 
#> $questions
#> [1] "Which task presents the greatest usability challenge?"
#> [2] "How are task success and completion time related?"    
#> [3] "What improvements would you prioritise?"              
#> 
```
