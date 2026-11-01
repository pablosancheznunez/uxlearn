# UX Learning Workbook
## Learn, Analyse and Improve Digital Experiences

**An Open Educational Resource for Learning User Experience Evaluation with R**

**Author:** Pablo Sánchez-Núñez
**Package:** `uxlearn`
**Resource type:** Open Educational Resource (OER)
**Language:** English

---

# About this Workbook

This workbook introduces the principles and practice of User Experience (UX) evaluation through practical activities, synthetic datasets and applied challenges.

It is designed for students who want to understand how people interact with digital products and services, identify usability problems and use evidence to propose improvements.

No previous experience in UX research or programming is required. The activities progressively introduce key concepts and practical techniques using R and the `uxlearn` package.

All datasets included in this resource are synthetic. They have been created for educational purposes and do not represent observations collected from real users.

## Learning objectives

By completing this workbook, students should be able to:

- Understand the fundamental principles of UX and usability.
- Identify and interpret quantitative UX metrics.
- Explore user behaviour through structured datasets.
- Detect and analyse usability problems.
- Prioritise design improvements using evidence.
- Develop evidence-based design recommendations.
- Understand the role of accessibility and inclusive design in UX evaluation.
- Apply UX evaluation techniques to different digital contexts.

## Learning pathway

| Module | Topic |
|---|---|
| 1 | Understanding UX Evaluation |
| 2 | Understanding UX Metrics |
| 3 | Exploring User Behaviour |
| 4 | Identifying Usability Problems |
| 5 | Prioritising Improvements |
| 6 | Evidence-Based Design |
| 7 | Applied UX Challenges |

Each module follows five learning stages:

1. **Learn:** understand the concepts.
2. **Explore:** examine examples and datasets.
3. **Practice:** complete guided activities.
4. **Challenge:** solve an independent problem.
5. **Reflect:** consolidate learning.

---

# Module 1. Understanding UX Evaluation

## 1.1. Learning objectives

By the end of this module, you should be able to:

- Explain what User Experience (UX) means.
- Distinguish UX from usability.
- Understand why digital experiences should be evaluated.
- Identify basic elements of a usability evaluation.
- Recognise the role of evidence in UX design.
- Explain why accessibility and inclusive design are essential to UX.

## 1.2. Learn

### What is User Experience?

User Experience (UX) refers to the perceptions and responses that result from the use or anticipated use of a product, system or service.

UX is broader than usability. It includes effectiveness, efficiency and satisfaction, but also aspects such as accessibility, trust, emotions, expectations and the context in which an experience takes place.

A digital product can be technically functional and still provide a poor user experience.

### UX and usability

Usability focuses on whether users can achieve specific goals effectively, efficiently and satisfactorily in a particular context of use.

UX considers the broader experience surrounding those interactions.

For example, completing a bank transfer successfully is a usability outcome. Feeling confident that the transfer was secure is also part of the wider user experience.

Usability should be understood in relation to the context of use, including users, their goals and the conditions under which an interactive system is used (International Organization for Standardization, 2018). Human-centred design also emphasises the importance of understanding users throughout the design and development process (International Organization for Standardization, 2019; Norman, 2013).

### Why evaluate UX?

UX evaluation helps us understand how people interact with digital products and services. It allows us to identify barriers, detect usability problems and make informed design decisions.

Without evaluation, design decisions may rely excessively on assumptions, preferences or personal opinions.

### Accessibility and inclusive design

Accessibility is an essential dimension of user experience. Digital products and services should be designed so that people with different physical, sensory and cognitive abilities can perceive, understand, navigate and interact with them.

Inclusive design considers the diversity of users and the different circumstances in which digital products are used. Accessibility should not be treated as an optional feature added at the end of the design process.

The Web Content Accessibility Guidelines (WCAG) 2.2 provide testable success criteria for making web content more accessible. They address areas such as text alternatives, keyboard accessibility, colour contrast, navigation and input methods (World Wide Web Consortium, 2023).

ISO 9241-171:2025 provides requirements and guidance for designing accessible software for people with a wide range of abilities (International Organization for Standardization, 2025).

When evaluating a digital experience, consider questions such as:

- Can users navigate the interface using a keyboard?
- Are images and other non-text elements provided with appropriate alternatives?
- Is information communicated without relying exclusively on colour?
- Are text, controls and interactive elements perceivable and understandable?
- Can users complete tasks using different interaction methods?

Accessibility evaluation should combine applicable standards, technical checks and evaluation with users. Automated tools alone cannot establish that a digital experience is accessible.

## 1.3. Explore

### A digital banking example

Imagine that a user wants to freeze a bank card after losing it.

Consider the following questions:

- Can the user find the option easily?
- Can the task be completed without errors?
- How long does the process take?
- Does the user understand whether the card has been blocked?
- Does the interaction generate confidence?
- Can users with different abilities complete the task?

These questions illustrate why UX evaluation should consider more than whether a button works.

## 1.4. Practice

### Activity 1. Evaluate a digital interaction

Choose a digital service you have used recently: an online shop, a banking application, a university platform or an e-government service.

Describe one task you wanted to complete.

Answer the following questions:

1. What was your goal?
2. Was the task easy to complete?
3. Did you encounter any difficulties?
4. What information or feedback did the interface provide?
5. What would you improve?
6. Could any accessibility barrier prevent another person from completing the same task?

**Expected outcome:** a short description of a digital interaction and at least one potential usability or accessibility problem.

## 1.5. Challenge

### Challenge 1. The invisible problem

A university platform allows students to submit assignments. The submission process works correctly, but students frequently contact the university because they are unsure whether their files have been successfully uploaded.

Identify:

- The user's goal.
- The possible usability problem.
- The evidence you would need to investigate it.
- Two possible design improvements.
- One accessibility consideration that should be included in the redesign.

## 1.6. Reflect

1. Can a technically functional interface provide a poor user experience?
2. Why is user evidence important when evaluating digital products?
3. What is the difference between identifying a problem and proposing a solution?
4. Why should accessibility be considered from the beginning of the design process?

## 1.7. Self-assessment

- [ ] Explain the difference between UX and usability.
- [ ] Identify the goal of a user interaction.
- [ ] Recognise a potential usability problem.
- [ ] Explain why UX evaluation requires evidence.
- [ ] Identify a possible accessibility barrier.

**Key takeaway**

Good UX design is not based solely on assumptions about users. It requires understanding their goals, observing their interactions and using evidence to improve digital experiences. Accessibility and inclusion are essential parts of this process.

---

# Module 2. Understanding UX Metrics

## 2.1. Learning objectives

By the end of this module, you should be able to:

- Explain the role of quantitative metrics in UX evaluation.
- Understand task success rate, task completion time and error rate.
- Interpret user satisfaction scores.
- Calculate basic usability indicators using R and `uxlearn`.
- Identify the limitations of quantitative UX metrics.

## 2.2. Learn

### Why measure UX?

UX evaluation can produce qualitative and quantitative evidence.

Qualitative methods help us understand why users experience difficulties. Quantitative metrics help us describe how often problems occur, how long tasks take and how users evaluate their experience.

Neither type of evidence is sufficient on its own. Combining them provides a more complete understanding of digital interactions.

### Task success rate

Task success rate measures the proportion of participants who successfully complete a specific task.

\[
Success\ Rate =
\frac{Successful\ Attempts}{Total\ Attempts}\times100
\]

For example, if 24 out of 30 participants successfully complete a bank transfer, the task success rate is 80%.

A low success rate may indicate navigation problems, unclear instructions or other usability barriers. However, this metric does not explain the cause of the problem.

### Task completion time

Task completion time measures how long participants need to complete a task.

It is generally expressed in seconds or minutes.

A longer completion time may indicate unnecessary steps, difficult information retrieval or uncertainty. However, longer times are not always evidence of poor usability. Some tasks are inherently more complex than others.

### Error rate

The error rate describes the errors made while users interact with a digital product.

In this workbook, we use the average number of errors per task as a simple indicator.

A high number of errors may reveal confusing labels, misleading feedback, poor information architecture or interaction difficulties.

**Important:** the average number of errors per task is not the same as the percentage of users who make at least one error.

### User satisfaction

Satisfaction represents the user's subjective evaluation of an interaction.

In our educational datasets, satisfaction is measured on a scale from 1 to 7. Higher scores indicate greater reported satisfaction.

Satisfaction should not be interpreted as a direct substitute for task success or usability. Users may complete a task successfully while feeling dissatisfied, or experience difficulties while still reporting a positive overall impression.

Quantitative UX evaluation provides systematic ways to measure user performance and experience. Metrics such as task success, completion time, errors and satisfaction can help identify usability issues and evaluate design alternatives (Sauro & Lewis, 2016).

Standardised instruments such as the System Usability Scale (SUS) provide an additional approach to measuring perceived usability (Brooke, 1996). The SUS is a standardised questionnaire and should not be confused with task success or other direct performance measures.

## 2.3. Explore

### A banking application

Imagine that 30 participants evaluate five tasks in a digital banking application.

The educational dataset `ux_banking` contains simulated observations of these interactions.

Load the dataset:

```r
library(uxlearn)

data("ux_banking")

head(ux_banking)
```

Each row represents one participant performing one task. The dataset contains 150 observations: 30 participants performing five tasks each.

Explore the variables:

```r
str(ux_banking)
summary(ux_banking)
```

Important variables include:

| Variable | Meaning |
|---|---|
| `participant_id` | Participant identifier |
| `task_name` | Task performed |
| `success` | Task success |
| `time_seconds` | Completion time |
| `errors` | Number of errors |
| `satisfaction` | Satisfaction score |

## 2.4. Practice

### Activity 1. Calculate usability metrics

Use `uxlearn` to calculate a summary of the banking study:

```r
exercise <- ux_learning(
  data = ux_banking,
  level = "beginner"
)

exercise
```

The simulated banking dataset produces the following overall results:

| Metric | Result |
|---|---:|
| Task success | 88% |
| Completion time | 45.66 seconds |
| Average errors | 0.59 |
| Satisfaction | 5.02 / 7 |

These values describe this particular simulated dataset. They are not universal UX benchmarks.

### Activity 2. Compare individual tasks

Examine the results for each task:

```r
exercise$task_analysis
```

The task *Make a bank transfer* has a 70% success rate and an average completion time of 72.50 seconds.

Consider the following questions:

- Which task has the lowest success rate?
- Which task takes the longest?
- Are the tasks with the lowest success rates also those with the most errors?
- Does satisfaction always follow the same pattern as task success?

### Activity 3. Generate learning recommendations

```r
ux_recommendations(exercise)
```

The function identifies tasks that may deserve further attention and generates recommendations and learning activities.

The priority categories are educational heuristics based on task success rates. They are not validated universal thresholds.

## 2.5. Challenge

### Challenge 2. The successful but frustrating experience

Imagine that an online banking task has the following results:

- Task success: 95%.
- Average completion time: 110 seconds.
- Average errors: 2.1.
- Satisfaction: 3.2 out of 7.

Answer the following questions:

1. Would you consider this task usable?
2. What do the metrics suggest?
3. What additional evidence would you collect?
4. Which aspects of the interaction would you investigate first?
5. Propose two possible improvements.

## 2.6. Reflect

1. Can a high task success rate hide usability problems?
2. Why should completion time be interpreted in relation to task complexity?
3. What is the difference between objective performance and subjective satisfaction?
4. Why should quantitative and qualitative evidence be combined?

## 2.7. Self-assessment

- [ ] Explain task success rate.
- [ ] Interpret task completion time.
- [ ] Understand average errors.
- [ ] Interpret satisfaction scores.
- [ ] Compare different UX metrics.
- [ ] Use `ux_learning()` to explore a dataset.
- [ ] Generate recommendations with `ux_recommendations()`.

**Key takeaway**

UX metrics help us describe and compare user interactions, but numbers do not explain everything. Good UX evaluation requires interpreting metrics in context and combining quantitative results with evidence about users' experiences.

---

# Module 3. Exploring User Behaviour

## 3.1. Learning objectives

By the end of this module, you should be able to:

- Understand how user behaviour can be represented through task-based data.
- Identify patterns across participants and tasks.
- Compare performance between different tasks.
- Recognise differences between user groups.
- Interpret behavioural data without making unsupported assumptions.

## 3.2. Learn

### What is user behaviour?

User behaviour describes how people interact with a product, system or service to achieve their goals.

In UX evaluation, behaviour can be examined through observable actions and measurable outcomes, including:

- Tasks performed.
- Task completion.
- Time spent completing tasks.
- Errors made.
- Interaction sequences.
- Satisfaction reported after an interaction.

Behavioural data helps us understand what happens during an interaction. It does not automatically explain why it happens.

### Tasks and user goals

A task represents an activity performed by a user to achieve a specific goal.

For example, in an online learning platform:

- Find a learning resource.
- Enrol in a course.
- Submit an assignment.
- Check learning progress.
- Download a certificate.

Studying these tasks separately helps identify where difficulties occur.

### Comparing user behaviour

Users do not necessarily interact with digital products in the same way.

Differences may be associated with previous experience, task complexity, accessibility needs or the context of use.

However, observed differences should not automatically be attributed to a particular characteristic. Additional evidence is required to understand their causes.

## 3.3. Explore

### An online learning platform

The `ux_education` dataset contains simulated observations from 30 participants performing five tasks.

Load the dataset:

```r
data("ux_education")

head(ux_education)
```

Explore the structure:

```r
str(ux_education)
summary(ux_education)
```

Examine the participants and tasks:

```r
unique(ux_education$participant_id)

unique(ux_education$task_name)
```

### Explore the overall results

```r
education_exercise <- ux_learning(
  data = ux_education,
  level = "intermediate"
)

education_exercise$task_analysis
```

The dataset includes tasks with different levels of success, completion time, errors and satisfaction.

Look for differences between tasks rather than relying exclusively on the overall average.

## 3.4. Practice

### Activity 1. Identify behavioural patterns

Examine the task analysis generated by `ux_learning()`.

Answer:

1. Which task appears to be the most difficult?
2. Which task is completed most quickly?
3. Which task generates the highest number of errors?
4. Are satisfaction scores consistent with task success?
5. What patterns would you investigate further?

### Activity 2. Compare participant experience

The dataset includes a variable describing participant experience.

Explore it:

```r
table(ux_education$participant_experience)
```

Consider whether previous experience could be relevant when interpreting task performance.

Do not assume that experience explains the observed results without examining the data.

### Activity 3. Compare two domains

Compare the banking and education datasets:

```r
banking_exercise <- ux_learning(
  data = ux_banking,
  level = "intermediate"
)

education_exercise <- ux_learning(
  data = ux_education,
  level = "intermediate"
)

banking_exercise$task_analysis

education_exercise$task_analysis
```

Consider how the types of tasks differ between the two digital services.

## 3.5. Challenge

### Challenge 3. Different users, different experiences

Imagine that two groups of users evaluate the same digital platform.

Group A has extensive experience with digital services. Group B has limited experience.

The results show differences in task completion time and errors.

Develop an analysis that addresses:

- What behavioural differences can be observed?
- Which tasks show the greatest differences?
- What alternative explanations could exist?
- What additional information would you collect?
- How could the interface support users with different experience levels?

## 3.6. Reflect

1. Why should user behaviour be examined at task level?
2. What is the difference between observing a pattern and explaining its cause?
3. How can previous experience influence digital interactions?
4. Why should UX researchers avoid generalising from limited data?

## 3.7. Self-assessment

- [ ] Explain what user behaviour means in UX evaluation.
- [ ] Identify patterns across tasks.
- [ ] Compare different user groups.
- [ ] Interpret behavioural data cautiously.
- [ ] Identify additional evidence needed to explain observed differences.

**Key takeaway**

Understanding user behaviour requires more than calculating averages. It involves examining patterns, comparing interactions and distinguishing observable results from possible explanations.

---

# Module 4. Identifying Usability Problems

## 4.1. Learning objectives

By the end of this module, you should be able to:

- Identify potential usability problems from evaluation data.
- Distinguish symptoms from underlying problems.
- Relate metrics to possible interaction difficulties.
- Develop hypotheses about usability barriers.
- Propose ways to investigate problems further.

## 4.2. Learn

### What is a usability problem?

A usability problem occurs when an interface or interaction makes it difficult for users to achieve their goals effectively, efficiently or satisfactorily.

Examples include:

- Unclear navigation labels.
- Difficult information retrieval.
- Unnecessary interaction steps.
- Confusing forms.
- Insufficient feedback.
- Unclear error messages.
- Poorly organised information.

### Symptoms and causes

An important distinction in UX evaluation is the difference between an observable symptom and its underlying cause.

For example:

**Symptom:** users take a long time to complete a form.

**Possible causes:**

- Questions are unclear.
- Information is difficult to locate.
- The form contains unnecessary fields.
- Validation messages are confusing.
- The interface does not explain what information is required.

A metric may identify where a problem exists, but additional investigation is necessary to understand why.

Usability engineering provides methods for examining interaction problems and evaluating how interface design affects users' ability to achieve their goals (Nielsen, 1993).

### Combining evidence

Potential usability problems can be identified by combining:

- Low task success.
- Long completion times.
- High error counts.
- Low satisfaction.
- User comments and observations.
- Interaction recordings or other behavioural evidence.

No single indicator should automatically be treated as proof of a specific design problem.

## 4.3. Explore

### An e-government service

The `ux_egovernment` dataset represents a simulated evaluation of a digital public administration service.

Load the data:

```r
data("ux_egovernment")

head(ux_egovernment)
```

Generate a learning analysis:

```r
government_exercise <- ux_learning(
  data = ux_egovernment,
  level = "advanced"
)

government_exercise$task_analysis
```

The tasks include:

- Finding an administrative procedure.
- Identifying required documentation.
- Submitting an online application.
- Checking application status.
- Downloading an official certificate.

Consider how the consequences of usability problems may differ between these tasks.

For example, difficulty downloading a certificate may have different implications from difficulty understanding which documents are required to submit an application.

## 4.4. Practice

### Activity 1. Identify potential problem areas

Examine the results for each task.

Identify:

1. The task with the lowest success rate.
2. The task with the longest completion time.
3. The task with the highest average number of errors.
4. Any differences between task success and satisfaction.

Write a short description of the two tasks you would investigate first.

### Activity 2. Formulate problem hypotheses

For each selected task, formulate at least two possible explanations for the observed results.

Use the following structure:

| Observation | Possible problem | Evidence needed |
|---|---|---|
| Low success rate | Unclear instructions | User observations |
| Long completion time | Difficult navigation | Interaction recordings |
| High error count | Confusing form fields | Error analysis |
| Low satisfaction | Unclear feedback | User comments |

These are examples of possible relationships, not established explanations.

### Activity 3. Generate recommendations

Use:

```r
ux_recommendations(government_exercise)
```

Review the recommendations and compare them with your own problem hypotheses.

Ask yourself whether each recommendation is supported by the available evidence.

## 4.5. Challenge

### Challenge 4. The confusing application form

A digital public service allows citizens to apply for a benefit.

During usability testing, researchers observe:

- Users frequently revisit previous steps.
- Some participants submit incomplete forms.
- The average completion time is unusually high.
- Satisfaction is relatively low.

Develop a problem analysis that includes:

1. Three possible usability problems.
2. The evidence supporting each hypothesis.
3. Additional information needed to validate the hypotheses.
4. Two design improvements.
5. A way to evaluate whether the improvements work.

## 4.6. Reflect

1. Why is a metric not sufficient to identify the cause of a usability problem?
2. What is the difference between a usability symptom and an underlying cause?
3. Why should recommendations be connected to evidence?
4. How can qualitative evidence complement quantitative metrics?

## 4.7. Self-assessment

- [ ] Identify potential usability problems.
- [ ] Distinguish symptoms from possible causes.
- [ ] Formulate problem hypotheses.
- [ ] Identify evidence needed to investigate problems.
- [ ] Relate recommendations to observed difficulties.

**Key takeaway**

Identifying usability problems is an analytical process. Metrics help locate potential difficulties, while observations and additional evidence help explain their causes.

---

# Module 5. Prioritising Improvements

## 5.1. Learning objectives

By the end of this module, you should be able to:

- Understand why UX improvements need prioritisation.
- Identify tasks that require further attention.
- Compare the severity and consequences of usability problems.
- Use task success and other indicators to support prioritisation.
- Develop a reasoned improvement plan.

## 5.2. Learn

### Why prioritise UX improvements?

Digital products often contain several usability problems, but teams usually have limited time and resources.

Prioritisation helps determine which problems should be addressed first.

A prioritisation decision should consider more than one metric.

Relevant factors include:

- Frequency of the problem.
- Impact on users.
- Task importance.
- Consequences of failure.
- Number of users affected.
- Implementation effort.
- Accessibility and inclusion implications.

### Performance and impact

A task with a low success rate may deserve attention, but its importance also depends on the consequences of failure.

For example:

- Difficulty finding a product may reduce conversion.
- Difficulty transferring money may affect access to essential financial services.
- Difficulty submitting an application may prevent access to a public benefit.

The context matters.

### Prioritisation is a decision

A prioritisation framework helps structure decisions, but it does not replace professional judgement or user research.

The categories generated by `ux_recommendations()` are educational heuristics based on task success:

- **High:** success below 80%.
- **Medium:** success from 80% to below 90%.
- **Low:** success of 90% or above.

These thresholds are illustrative and should not be interpreted as universal UX standards.

## 5.3. Explore

### Comparing tasks in digital banking

Load the banking dataset and generate recommendations:

```r
banking_exercise <- ux_learning(
  data = ux_banking,
  level = "intermediate"
)

banking_recommendations <- ux_recommendations(
  banking_exercise
)

banking_recommendations
```

The simulated banking data show that making a bank transfer has a 70% success rate.

This task deserves investigation, but its priority should also consider the consequences of errors and the importance of the task to users.

## 5.4. Practice

### Activity 1. Identify priority tasks

Examine the generated recommendations.

Identify:

1. Tasks classified as High priority.
2. Tasks classified as Medium priority.
3. Tasks classified as Low priority.

For each task, explain whether you agree with its assigned priority.

### Activity 2. Add contextual information

Imagine that you are evaluating a banking application.

Consider two tasks:

- Checking an account balance.
- Making a bank transfer.

Suppose both tasks have similar success rates.

Which task would you investigate first?

Explain your decision considering the potential consequences of failure.

### Activity 3. Develop an improvement plan

Create a table with the following structure:

| Task | Observed problem | Priority | Proposed improvement | Evaluation metric |
|---|---|---|---|---|
| Bank transfer | Low task success | High | Simplify the process | Success rate |
| Transaction search | Long completion time | Medium | Improve filtering | Completion time |

Complete the table using your own analysis of the dataset.

## 5.5. Challenge

### Challenge 5. Limited resources

You are part of a UX team responsible for improving an online learning platform.

The evaluation identifies three problems:

- Students have difficulty enrolling in courses.
- Some students struggle to submit assignments.
- Finding learning resources takes longer than expected.

You have sufficient resources to address only one problem immediately.

Develop a prioritisation proposal that considers:

1. Task performance.
2. User impact.
3. Consequences of failure.
4. Accessibility.
5. Implementation effort.

Justify your decision and explain what you would investigate next.

## 5.6. Reflect

1. Should the task with the lowest success rate always be prioritised?
2. Why are the consequences of failure important?
3. How can accessibility influence prioritisation?
4. Why should prioritisation decisions be documented?

## 5.7. Self-assessment

- [ ] Explain why UX improvements require prioritisation.
- [ ] Interpret priority categories.
- [ ] Consider task importance and user impact.
- [ ] Develop an improvement plan.
- [ ] Justify prioritisation decisions with evidence.

**Key takeaway**

Prioritisation is not simply ranking tasks by performance. It requires combining evidence about usability, user needs, task importance and the consequences of failure.

---

# Module 6. Evidence-Based Design

## 6.1. Learning objectives

By the end of this module, you should be able to:

- Explain the principles of evidence-based design.
- Translate evaluation findings into design recommendations.
- Distinguish evidence from assumptions.
- Define measurable improvement objectives.
- Understand the importance of evaluating design changes.
- Include accessibility requirements in design proposals.

## 6.2. Learn

### What is evidence-based design?

Evidence-based design uses relevant information to guide design decisions.

In UX, evidence can come from:

- Usability testing.
- User interviews.
- Surveys.
- Behavioural analytics.
- Accessibility evaluations.
- Expert inspections.
- Experimental studies.

The objective is to ensure that design decisions respond to actual user needs and observed problems rather than unsupported assumptions.

### From evidence to design decisions

A structured process can help:

1. Identify an observed problem.
2. Examine the available evidence.
3. Formulate a hypothesis about its causes.
4. Develop a design recommendation.
5. Define an expected outcome.
6. Evaluate the proposed improvement.

Human-centred design is an iterative process in which understanding users, specifying requirements, developing design solutions and evaluating outcomes are interconnected activities (International Organization for Standardization, 2019).

### Design hypotheses

A design hypothesis connects a proposed change with an expected outcome.

For example:

**Problem:** users struggle to identify the next step in an application form.

**Hypothesis:** making the progress indicator more visible will help users understand where they are in the process.

**Expected outcome:** improved task completion and fewer navigation errors.

A hypothesis should be testable.

### Measuring improvement

An improvement should be evaluated using appropriate indicators.

Possible measures include:

- Higher task success.
- Lower completion time.
- Fewer errors.
- Higher satisfaction.
- Improved accessibility outcomes.

The selected metrics should correspond to the problem being addressed.

### Accessibility as a design requirement

Accessibility should be considered when defining design requirements, developing solutions and evaluating outcomes.

A design improvement should not be considered successful if it improves task completion for some users while creating additional barriers for others.

For example, increasing the visual prominence of a button may improve its visibility, but the button should also remain identifiable and operable through keyboard navigation and assistive technologies.

WCAG 2.2 provides testable criteria that can support accessibility evaluation (World Wide Web Consortium, 2023). ISO 9241-171:2025 provides additional guidance on accessible software design (International Organization for Standardization, 2025).

When developing an evidence-based design proposal, include at least one accessibility consideration and explain how it could be evaluated.

## 6.3. Explore

### Improving an online shopping experience

The `usability_test` dataset represents a simulated evaluation of an e-commerce platform.

Load the dataset:

```r
data("usability_test")

shopping_exercise <- ux_learning(
  data = usability_test,
  level = "advanced"
)

shopping_exercise$task_analysis
```

Imagine that the analysis identifies difficulties when adding products to the shopping cart.

Possible design hypotheses include:

- The add-to-cart button is difficult to identify.
- Feedback after adding a product is insufficient.
- Product availability is unclear.
- The interaction requires unnecessary steps.

Each hypothesis requires further investigation.

## 6.4. Practice

### Activity 1. From problem to recommendation

Select one task from the e-commerce dataset.

Complete the following structure:

| Element | Your analysis |
|---|---|
| Observed result | What does the data show? |
| Potential problem | What might be happening? |
| Evidence required | What else should be investigated? |
| Design hypothesis | What change could help? |
| Expected outcome | What should improve? |
| Evaluation metric | How will you measure it? |
| Accessibility consideration | Could the change create or remove barriers? |

### Activity 2. Define measurable objectives

Write an objective for your proposed improvement.

For example:

"Increase the task success rate for adding a product to the shopping cart while reducing the average completion time."

A good objective should identify:

- The task.
- The intended improvement.
- The indicator used to evaluate it.

### Activity 3. Evaluate a hypothetical redesign

Imagine that a redesigned shopping cart produces these results:

| Metric | Before | After |
|---|---:|---:|
| Task success | 76.7% | 90% |
| Average completion time | 50 seconds | 38 seconds |
| Average errors | 0.43 | 0.20 |
| Satisfaction | 4.3 / 7 | 5.6 / 7 |

Discuss whether the redesign appears successful.

These figures are hypothetical and are provided only for this exercise.

Consider whether the results would be sufficient to establish that the redesign caused the improvement. What additional study design or evidence would be necessary?

### Activity 4. Review an accessibility requirement

Choose one relevant WCAG 2.2 success criterion.

Explain:

1. What accessibility issue does it address?
2. Which interface element or interaction does it concern?
3. How could you evaluate whether the interface meets the criterion?
4. What limitations might an automated accessibility checker have?

Use the official WCAG 2.2 documentation as your reference.

## 6.5. Challenge

### Challenge 6. Design with evidence

Choose one usability problem from any of the four educational datasets:

- E-commerce.
- Digital banking.
- Online learning.
- E-government.

Develop a short evidence-based design proposal containing:

1. Context and user goal.
2. Observed usability problem.
3. Supporting evidence.
4. Design hypothesis.
5. Proposed improvement.
6. Expected outcome.
7. Evaluation metrics.
8. Accessibility considerations.
9. Limitations of the available evidence.

Your proposal should distinguish clearly between observed results and assumptions that still need testing.

## 6.6. Reflect

1. What makes a design decision evidence-based?
2. Why should a design hypothesis be testable?
3. How can a redesign introduce new usability problems?
4. Why should design improvements be evaluated after implementation?
5. Why is accessibility an integral part of design quality?

## 6.7. Self-assessment

- [ ] Explain evidence-based design.
- [ ] Translate evaluation findings into recommendations.
- [ ] Formulate testable design hypotheses.
- [ ] Define measurable improvement objectives.
- [ ] Propose an evaluation strategy.
- [ ] Identify relevant accessibility requirements.

**Key takeaway**

Evidence-based design connects observed user needs with testable design decisions. Improvements should not be considered successful simply because they look better; their usability and accessibility impact needs to be evaluated.

---

# Module 7. Applied UX Challenges

## 7.1. Learning objectives

By the end of this module, you should be able to:

- Apply UX evaluation concepts to different digital contexts.
- Generate and analyse contextualised UX case studies.
- Compare usability results across different domains.
- Interpret quantitative evidence and identify potential usability problems.
- Develop and justify evidence-based design recommendations.
- Consider accessibility in UX evaluation.
- Communicate UX evaluation findings through a structured report.

## 7.2. Exploring different UX contexts

UX evaluation principles can be applied to many types of digital services. However, usability problems and their implications may vary depending on the context.

The `uxlearn` package includes four educational datasets representing different digital environments:

| Dataset | Digital context | Example activities |
|---|---|---|
| `usability_test` | E-commerce | Searching for products and completing purchases |
| `ux_banking` | Online banking | Making transfers and checking account information |
| `ux_education` | Digital learning | Enrolling in courses and submitting assignments |
| `ux_egovernment` | E-government | Completing administrative procedures |

All datasets contain synthetic data generated for educational purposes.

## 7.3. Generate your first UX case study

The `ux_case_study()` function generates a contextualised learning exercise using one of the four available domains.

First, generate an e-commerce case study:

```r
case_ecommerce <- ux_case_study(
  domain = "ecommerce",
  level = "beginner"
)

case_ecommerce
```

You can also explore other contexts:

```r
case_banking <- ux_case_study(
  domain = "banking",
  level = "intermediate"
)

case_education <- ux_case_study(
  domain = "education",
  level = "advanced"
)

case_government <- ux_case_study(
  domain = "e-government",
  level = "advanced"
)
```

Explore the generated results and consider how the evaluation context influences the interpretation of usability metrics.

## 7.4. Compare different digital environments

Use the educational datasets to compare UX performance across domains.

For example, calculate the overall usability metrics for banking and education:

```r
banking_analysis <- ux_learning(
  data = ux_banking,
  level = "intermediate"
)

education_analysis <- ux_learning(
  data = ux_education,
  level = "intermediate"
)

banking_analysis$results

education_analysis$results
```

Then compare the task-level results:

```r
banking_analysis$task_analysis

education_analysis$task_analysis
```

**Explore the results**

Consider the following questions:

1. Which domain presents the highest overall task success rate?
2. Which tasks require more time to complete?
3. Which tasks generate more errors?
4. Are higher success rates always associated with higher satisfaction?
5. What contextual factors might explain the differences?

Remember that these datasets are synthetic. They allow you to practise analytical procedures but cannot establish how real users behave in actual banking or educational platforms.

## 7.5. Generate evidence-based recommendations

Now use the banking dataset to identify tasks that may require design improvements.

First, create an analysis object:

```r
exercise <- ux_learning(
  data = ux_banking,
  level = "advanced"
)
```

Explore the task-level results:

```r
exercise$task_analysis
```

Then generate recommendations:

```r
ux_recommendations(exercise)
```

**Interpret the output**

Pay particular attention to tasks with lower success rates, longer completion times and higher error counts.

The recommendations generated by the package are intended to support learning and analytical reflection. They should not replace contextual investigation or professional judgement.

## 7.6. Applied UX challenges

Choose one of the four available domains and develop a complete UX evaluation.

You can use the following starting points:

**Challenge A. E-commerce**

Investigate how users search for products, add items to their shopping carts and complete purchases.

**Challenge B. Online banking**

Evaluate the usability of financial operations, particularly making bank transfers and finding transaction information.

**Challenge C. Digital education**

Explore how students interact with learning platforms, submit assignments and monitor their academic progress.

**Challenge D. E-government**

Analyse how citizens interact with administrative services, identify required documentation and submit online applications.

### Your task

Prepare a short UX evaluation report containing the following sections:

1. **Context:** Describe the digital environment and the user goals.
2. **Evaluation objectives:** Explain what you want to investigate.
3. **Data analysis:** Calculate and interpret relevant usability metrics.
4. **Problem identification:** Identify tasks that may present usability difficulties.
5. **Prioritisation:** Explain which problems should be addressed first and why.
6. **Recommendations:** Propose evidence-based design improvements.
7. **Accessibility considerations:** Identify potential accessibility barriers and explain how the proposed design could better support users with different abilities. Where relevant, refer to WCAG 2.2 success criteria.
8. **Evaluation strategy:** Explain how you would assess whether the proposed improvements are effective, including usability and accessibility considerations.
9. **Limitations:** Discuss the limitations of the available synthetic data.

### Final challenge

Develop a redesign proposal for one of the tasks identified in your analysis.

Your proposal should include:

- The original usability problem.
- The evidence supporting your interpretation.
- A design hypothesis.
- A proposed improvement.
- The expected impact on usability.
- Relevant accessibility considerations.
- The metrics you would use to evaluate the redesign.

## 7.7. Reflection

Answer the following questions:

1. How does the context of a digital service influence UX evaluation?
2. Why should usability metrics be interpreted together rather than independently?
3. What are the limitations of using synthetic datasets to evaluate UX?
4. How can quantitative and qualitative evidence complement each other?
5. Why should design recommendations be evaluated after implementation?
6. How can accessibility evaluation contribute to more inclusive digital services?

## 7.8. Self-assessment

Before completing this module, check whether you can:

- [ ] Generate a contextualised UX case study.
- [ ] Analyse at least two educational datasets.
- [ ] Interpret task-level usability metrics.
- [ ] Identify and prioritise potential usability problems.
- [ ] Generate and critically assess UX recommendations.
- [ ] Identify accessibility considerations.
- [ ] Develop a structured UX evaluation report.
- [ ] Propose a testable design improvement.

**Key takeaway**

UX evaluation is a continuous process of understanding user goals, analysing interaction evidence, identifying usability problems and testing design improvements.

The objective is not simply to measure digital experiences, but to use evidence to understand them and make them better for a diverse range of users.

---

# Final Reflection

## What have you learned?

After completing the workbook, reflect on the following questions:

1. How has your understanding of UX changed?
2. Which metrics do you consider most useful when evaluating digital experiences?
3. Why is it important to combine quantitative and qualitative evidence?
4. How can UX evaluation contribute to more inclusive digital products and services?
5. What would you investigate before implementing a design improvement?
6. How would you incorporate accessibility into a UX evaluation?

## Final learning outcome

You should now be able to approach a digital product or service from an evaluation perspective: understand user goals, examine interactions, interpret usability metrics, identify potential problems, prioritise improvements and formulate evidence-based design recommendations.

You should also be able to recognise accessibility barriers and consider how digital experiences can better support users with different abilities and needs.

---

# Glossary

| Term | Definition |
|---|---|
| User Experience (UX) | Perceptions and responses resulting from the use or anticipated use of a product, system or service. |
| Usability | The extent to which specified users can achieve specified goals effectively, efficiently and satisfactorily in a particular context of use. |
| Task success rate | The proportion of attempts in which a task is successfully completed. |
| Task completion time | The time required to complete a task. |
| Error | An incorrect action or outcome during an interaction, according to the evaluation criteria. |
| User satisfaction | A subjective assessment of an interaction or experience. |
| User behaviour | Observable actions and patterns during interaction with a product or service. |
| Evidence-based design | An approach to design decisions informed by relevant evidence. |
| Usability problem | A difficulty that prevents or hinders users from achieving their goals. |
| Accessibility | The extent to which products, services and environments can be used by people with a wide range of abilities and needs. |
| Inclusive design | An approach that considers human diversity and aims to reduce barriers to participation and use. |
| Synthetic data | Artificially generated data created for purposes such as teaching, testing or simulation. |
| WCAG | Web Content Accessibility Guidelines, a set of recommendations and testable success criteria for web accessibility. |

---

# About the `uxlearn` Package

`uxlearn` is an R package designed to support the teaching and learning of User Experience (UX).

It provides educational datasets and practical functions for exploring user behaviour, evaluating usability, interpreting UX metrics and generating learning activities.

The package is intended to support practical and reproducible learning experiences.

Repository: https://github.com/pablosancheznunez/uxlearn

---

# Data and Educational Use

All datasets included in this workbook are synthetic and have been generated for educational purposes.

They do not represent real users, actual usability studies or empirical evaluations of commercial or public services.

The results should not be used as evidence of the performance of real digital products or as universal usability benchmarks.

The workbook and its activities are intended to support learning, experimentation and critical thinking about UX evaluation.

---

# References

Brooke, J. (1996). SUS: A "quick and dirty" usability scale. In P. W. Jordan, B. Thomas, B. A. Weerdmeester, & I. L. McClelland (Eds.), *Usability Evaluation in Industry* (pp. 189–194). Taylor & Francis.

International Organization for Standardization. (2018). *ISO 9241-11:2018: Ergonomics of human-system interaction — Part 11: Usability: Definitions and concepts*. ISO. https://www.iso.org/standard/63500.html

International Organization for Standardization. (2019). *ISO 9241-210:2019: Ergonomics of human-system interaction — Part 210: Human-centred design for interactive systems*. ISO. https://www.iso.org/standard/77520.html

International Organization for Standardization. (2025). *ISO 9241-171:2025: Ergonomics of human-system interaction — Part 171: Software accessibility*. ISO.

Nielsen, J. (1993). *Usability Engineering*. Morgan Kaufmann.

Norman, D. A. (2013). *The Design of Everyday Things: Revised and Expanded Edition*. Basic Books.

Sauro, J., & Lewis, J. R. (2016). *Quantifying the User Experience: Practical Statistics for User Research* (2nd ed.). Morgan Kaufmann.

World Wide Web Consortium. (2023). *Web Content Accessibility Guidelines (WCAG) 2.2*. W3C Recommendation, 5 October 2023. https://www.w3.org/TR/WCAG22/

## How to use these references

These publications provide complementary theoretical and methodological foundations for UX evaluation:

- **Usability fundamentals:** ISO 9241-11 establishes the conceptual framework for understanding usability in context.
- **Human-centred design:** ISO 9241-210 describes the principles and activities of human-centred design throughout the life cycle of interactive systems.
- **Accessibility and inclusive design:** WCAG 2.2 provides testable accessibility success criteria for web content, while ISO 9241-171:2025 provides guidance on accessible software design.
- **Usability measurement:** Brooke introduces the System Usability Scale (SUS), while Sauro and Lewis provide practical approaches to quantitative UX measurement.
- **Usability engineering:** Nielsen discusses methods for evaluating usability and integrating usability considerations into software development.
- **Human-centred interaction design:** Norman explores the relationship between people, design and everyday interactions.

Students are encouraged to consult the original publications when developing their own UX evaluations and research projects.

---

*UX Learning Workbook — Learn, Analyse and Improve Digital Experiences.*
