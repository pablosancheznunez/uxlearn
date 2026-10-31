
#' Generate UX Case Studies
#'
#' Generates contextualised educational case studies using
#' usability testing data.
#'
#' @param data A usability dataset. If NULL, the function
#'   automatically selects the dataset associated with the domain.
#' @param domain The digital product context: "ecommerce",
#'   "banking", "education", or "e-government".
#' @param level Exercise difficulty: "beginner",
#'   "intermediate", or "advanced".
#'
#' @return A list containing the case study context,
#'   usability results, recommendations, and learning activities.
#'
#' @examples
#' ux_case_study()
#' ux_case_study(domain = "banking", level = "advanced")
#'
#' @export

ux_case_study <- function(data = NULL,
                          domain = "ecommerce",
                          level = "beginner") {

  domain <- match.arg(
    domain,
    choices = c(
      "ecommerce",
      "banking",
      "education",
      "e-government"
    )
  )

  level <- match.arg(
    level,
    choices = c("beginner", "intermediate", "advanced")
  )

  # Select the appropriate dataset automatically

  if (is.null(data)) {
    data <- switch(
      domain,
      ecommerce = usability_test,
      banking = ux_banking,
      education = ux_education,
      `e-government` = ux_egovernment
    )
  }

  # Validate the selected dataset

  required_columns <- c(
    "task_name",
    "success",
    "time_seconds",
    "errors",
    "satisfaction"
  )

  if (!is.data.frame(data)) {
    stop("The selected dataset must be a data frame.")
  }

  missing_columns <- setdiff(
    required_columns,
    names(data)
  )

  if (length(missing_columns) > 0) {
    stop(
      "The selected dataset is missing these columns: ",
      paste(missing_columns, collapse = ", ")
    )
  }

  # Define the case study context

  case_context <- switch(
    domain,

    ecommerce = list(
      product = "Online shopping platform",
      organisation = "An online retail company",
      scenario = paste(
        "The company wants to improve its online shopping",
        "experience and reduce difficulties during the",
        "product discovery and purchasing process."
      ),
      challenge = paste(
        "Users experience difficulties when navigating",
        "the platform and completing essential shopping tasks."
      )
    ),

    banking = list(
      product = "Digital banking application",
      organisation = "A retail banking institution",
      scenario = paste(
        "The bank is reviewing its mobile application",
        "to make everyday financial operations easier",
        "and more efficient for its customers."
      ),
      challenge = paste(
        "Users encounter usability barriers when accessing",
        "account information and completing financial operations."
      )
    ),

    education = list(
      product = "Online learning platform",
      organisation = "An educational institution",
      scenario = paste(
        "The institution wants to improve its virtual",
        "learning environment and help students complete",
        "their academic activities."
      ),
      challenge = paste(
        "Students experience difficulties when navigating",
        "learning resources and completing online activities."
      )
    ),

    `e-government` = list(
      product = "Digital public administration service",
      organisation = "A public administration",
      scenario = paste(
        "The administration wants to improve its digital",
        "services and make online procedures easier",
        "for citizens."
      ),
      challenge = paste(
        "Citizens encounter usability barriers when",
        "accessing information and completing administrative procedures."
      )
    )
  )

  # Generate the learning exercise

  exercise <- ux_learning(
    data = data,
    level = level
  )

  # Generate educational recommendations

  recommendations <- ux_recommendations(exercise)

  # Define questions according to difficulty

  questions <- switch(
    level,

    beginner = c(
      "Which tasks have the lowest success rates?",
      "What usability problems can you identify?",
      "Which improvement would you suggest first?"
    ),

    intermediate = c(
      "How do task success, completion time and errors relate?",
      "Which usability problems should be prioritised?",
      "How would you redesign the most problematic task?"
    ),

    advanced = c(
      "Critically evaluate the evidence and its limitations.",
      "Develop a prioritised, evidence-based redesign strategy.",
      "Define indicators to evaluate the effectiveness of your proposal."
    )
  )

  # Define the learning activity

  learning_activity <- switch(
    level,

    beginner = paste(
      "Identify the three main usability problems",
      "and propose one improvement for each."
    ),

    intermediate = paste(
      "Develop a redesign proposal for the task with",
      "the greatest usability difficulties. Justify",
      "your decisions using the study results."
    ),

    advanced = paste(
      "Prepare an evidence-based UX intervention.",
      "Prioritise design changes and define a plan",
      "to evaluate their impact."
    )
  )

  # Return the complete case study

  list(
    title = paste(
      "UX Case Study:",
      case_context$product
    ),
    domain = domain,
    level = level,
    organisation = case_context$organisation,
    product = case_context$product,
    scenario = case_context$scenario,
    challenge = case_context$challenge,
    learning_objectives = exercise$learning_objectives,
    usability_results = exercise$results,
    task_analysis = exercise$task_analysis,
    recommendations = recommendations$recommendations,
    questions = questions,
    learning_activity = learning_activity
  )
}
