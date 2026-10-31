# UX Learning Workbook
## Answer Key and Self-Assessment Guide

This document provides suggested answers, explanations and assessment guidance for the activities and challenges included in the UX Learning Workbook.

The answers are illustrative rather than exhaustive. Students may develop different conclusions, provided that their interpretations are supported by evidence and their reasoning is clearly explained.

All datasets used in this resource are synthetic and have been generated for educational purposes.

---

# Module 1. Understanding UX Evaluation

## Activity 1. Evaluate a digital interaction

There is no single correct answer because students will analyse different digital services.

A satisfactory response should identify:

- A specific digital service.
- A clear user goal.
- The interaction required to achieve that goal.
- At least one difficulty or potential usability problem.
- A possible improvement.

**Example answer**

A student wants to download a certificate from a university platform.

The goal is to locate the certificate and download it successfully.

A potential usability problem is that the download option is difficult to find because it is located in an unexpected section of the platform.

A possible improvement would be to make the certificate section more visible and provide clearer navigation labels.

The problem should be investigated through user observation and task-based usability testing before implementing the proposed change.

## Challenge 1. The invisible problem

**Possible analysis**

The user's goal is to submit an assignment and receive confirmation that the submission has been completed successfully.

The potential usability problem is insufficient system feedback. Although the upload process works correctly, users may not receive clear confirmation that their files have been submitted.

Possible explanations include:

- The confirmation message is difficult to notice.
- The system does not clearly indicate the submission status.
- The uploaded file is not displayed after submission.
- The interface does not explain whether further actions are required.

**Evidence to collect**

- Task completion rates.
- Number of users who attempt to submit the same assignment more than once.
- Time required to complete the submission.
- User comments and observations.
- Frequency of support requests related to submission confirmation.

**Possible improvements**

1. Display a prominent confirmation message after a successful submission.
2. Provide a submission summary showing the file name, date and current status.

**Evaluation strategy**

Conduct a new usability test and compare task success, completion time, errors and user confidence before and after the redesign.

## Reflection: Suggested answers

**1. Can a technically functional interface provide a poor user experience?**

Yes. Technical functionality does not guarantee that users can understand or operate an interface effectively. An interface may work correctly while presenting confusing navigation, unclear feedback or unnecessary complexity.

**2. Why is user evidence important?**

User evidence helps distinguish actual interaction problems from assumptions made by designers or developers.

**3. What is the difference between identifying a problem and proposing a solution?**

Identifying a problem involves describing an observed difficulty. Proposing a solution involves suggesting a design change intended to address that difficulty. A solution should be supported by evidence and subsequently evaluated.

---

# Module 2. Understanding UX Metrics

## Activity 1. Calculate usability metrics

The `ux_banking` dataset contains 150 synthetic observations from 30 participants performing five tasks.

The overall results are:

| Metric | Expected result |
|---|---:|
| Task success | 88% |
| Average completion time | 45.66 seconds |
| Average errors | 0.59 |
| Average satisfaction | 5.02 / 7 |

These results describe the educational dataset, not a real banking application.

## Activity 2. Compare individual tasks

The expected task-level results are:

| Task | Success | Time (seconds) | Errors | Satisfaction |
|---|---:|---:|---:|---:|
| Check account balance | 96.67% | 26.70 | 0.13 | 5.80 |
| Make a bank transfer | 70.00% | 72.50 | 0.97 | 4.50 |
| Freeze a bank card | 86.67% | 43.90 | 0.67 | 5.07 |
| Find a transaction | 90.00% | 48.17 | 0.87 | 4.47 |
| Download an account statement | 96.67% | 37.03 | 0.33 | 5.27 |

**Interpretation**

Making a bank transfer is the task with the lowest success rate and the longest completion time. It also has the highest average number of errors.

This combination suggests that the transfer process deserves further investigation.

Finding a transaction also presents a relatively high average number of errors and comparatively low satisfaction, despite its 90% success rate.

This illustrates why success rate should not be interpreted in isolation.

## Activity 3. Generate learning recommendations

The `ux_recommendations()` function identifies tasks that may deserve further attention.

For the banking dataset, making a bank transfer falls into the High priority category because its success rate is below 80%.

The other tasks are classified according to the educational thresholds described in the workbook.

These categories are illustrative learning criteria rather than universal usability standards.

## Challenge 2. The successful but frustrating experience

**Suggested interpretation**

This is a hypothetical scenario designed to explore the relationship between task success, completion time, errors and satisfaction. It does not represent a specific result from the banking dataset.

The task has a high success rate of 95%, but users require a relatively long time to complete it, make several errors and report low satisfaction.

This suggests that successful completion does not necessarily indicate a good user experience.

Possible explanations include:

- Unnecessary interaction steps.
- Unclear instructions.
- Confusing information architecture.
- Poor error prevention.
- Insufficient system feedback.
- Lack of confidence during the process.

**Additional evidence**

- User observations.
- Think-aloud sessions.
- Interaction recordings.
- User interviews.
- Error descriptions.
- Analysis of the steps required to complete the task.

**Possible improvements**

1. Simplify the interaction and remove unnecessary steps.
2. Improve instructions, feedback and error messages.

The improvements should be tested rather than assumed to be effective.

## Reflection: Suggested answers

**1. Can a high task success rate hide usability problems?**

Yes. Users may eventually complete a task despite experiencing considerable difficulties.

**2. Why should completion time be interpreted in relation to task complexity?**

Different tasks require different amounts of information processing and interaction. A longer task is not necessarily less usable if it is inherently more complex.

**3. What is the difference between objective performance and subjective satisfaction?**

Objective performance concerns observable outcomes, such as success, time and errors. Satisfaction concerns users' subjective evaluations.

**4. Why combine quantitative and qualitative evidence?**

Quantitative evidence describes patterns and outcomes, while qualitative evidence helps explain users' experiences and possible causes of difficulties.

---

# Module 3. Exploring User Behaviour

## Activity 1. Identify behavioural patterns

The `ux_education` dataset has the following task-level results:

| Task | Success | Time (seconds) | Errors | Satisfaction |
|---|---:|---:|---:|---:|
| Find a learning resource | 96.67% | 31.77 | 0.57 | 5.50 |
| Enrol in a course | 73.33% | 54.47 | 0.37 | 5.07 |
| Submit an assignment | 80.00% | 83.77 | 1.43 | 4.43 |
| Check learning progress | 100.00% | 29.00 | 0.17 | 5.27 |
| Download a certificate | 86.67% | 53.57 | 0.97 | 4.77 |

**Interpretation**

Submitting an assignment has the longest completion time and the highest average number of errors. It also has the lowest satisfaction score.

Enrolling in a course has the lowest success rate.

Checking learning progress has the highest success rate and the shortest completion time.

These patterns suggest that assignment submission and course enrolment are particularly relevant areas for further investigation.

## Activity 2. Compare participant experience

The variable `participant_experience` can be used to explore whether participants with different experience levels show different interaction patterns.

A suitable approach is to compare task-level results across experience groups.

For example, students may calculate average completion times or success rates for each group.

However, any observed differences should be interpreted cautiously.

The analysis does not establish that previous experience caused the differences. Other variables, such as familiarity with the specific platform or task complexity, may also be relevant.

## Activity 3. Compare two domains

A comparison between banking and education should consider both task performance and context.

Banking tasks involve financial operations, account information and transactions.

Education tasks involve learning resources, enrolment, assignments and progress monitoring.

The same metric may have different implications in each context. For example, an unsuccessful bank transfer and an unsuccessful search for a learning resource may have very different consequences for users.

## Challenge 3. Different users, different experiences

**Suggested analysis**

The first step is to identify whether differences between groups are present in the observed data.

Relevant indicators include:

- Task success rate.
- Average completion time.
- Average errors.
- Satisfaction.

The analysis should identify which tasks show the largest differences.

Possible explanations include previous digital experience, familiarity with similar interfaces, task complexity or differences in users' expectations.

Additional evidence could include user interviews, observations and task-level interaction recordings.

Possible design improvements include:

1. Providing clearer instructions and contextual guidance.
2. Making navigation and interaction patterns more consistent.

The design should support users with different levels of experience without unnecessarily restricting more experienced users.

## Reflection: Suggested answers

**1. Why examine behaviour at task level?**

Overall averages may conceal important differences between individual tasks.

**2. What is the difference between observing a pattern and explaining its cause?**

A pattern describes what is happening. An explanation proposes why it is happening and requires additional evidence.

**3. How can previous experience influence digital interactions?**

Previous experience may influence familiarity with interface conventions, expectations and the strategies users apply.

**4. Why avoid generalising from limited data?**

Small or artificial samples may not represent broader populations. Conclusions should reflect the limitations of the available evidence.

---

# Module 4. Identifying Usability Problems

## Activity 1. Identify potential problem areas

Students should examine the task analysis generated from `ux_egovernment`.

A satisfactory answer should identify tasks with relatively low success, long completion times, high error counts or low satisfaction.

The interpretation should focus on identifying areas that deserve further investigation, rather than claiming that the data establish a specific design cause.

## Activity 2. Formulate problem hypotheses

Examples of possible hypotheses include:

| Observation | Possible hypothesis | Additional evidence |
|---|---|---|
| Low task success | Users do not understand the procedure requirements | User observations and interviews |
| Long completion time | Required information is difficult to locate | Navigation analysis |
| High error count | Form fields are confusing | Error analysis |
| Low satisfaction | The system does not provide sufficient feedback | User comments and interaction recordings |

A strong answer distinguishes observations from hypotheses.

## Activity 3. Generate recommendations

The `ux_recommendations()` function can help identify tasks that deserve attention.

Students should evaluate whether the generated recommendations are appropriate for the task and whether the available evidence supports them.

Recommendations should not be accepted automatically.

## Challenge 4. The confusing application form

**Possible usability problems**

1. Users may not understand which documents are required.
2. The form may contain unclear fields or instructions.
3. The process may not provide sufficient feedback when information is missing.

**Supporting evidence**

- Repeated navigation between steps.
- Incomplete submissions.
- Long completion times.
- Low satisfaction.


These are examples of evidence that could support the investigation. Students should distinguish between findings actually available in the dataset and additional evidence that would need to be collected.

**Additional investigation**

Researchers could observe users completing the form, interview participants and examine error patterns.

**Possible improvements**

- Provide a clear checklist of required documents before users start.
- Improve field labels and validation messages.
- Introduce a progress indicator and a review screen before submission.

**Evaluation strategy**

Conduct usability testing with the redesigned form and compare task success, completion time, errors and satisfaction.

## Reflection: Suggested answers

**1. Why is a metric insufficient to identify the cause of a problem?**

Metrics identify outcomes but do not necessarily reveal the underlying interaction difficulties.

**2. What is the difference between a symptom and an underlying cause?**

A symptom is an observable result, such as a long completion time. An underlying cause is a possible reason, such as unclear instructions.

**3. Why connect recommendations to evidence?**

Evidence helps ensure that proposed changes address actual user difficulties.

**4. How does qualitative evidence complement quantitative metrics?**

Qualitative evidence provides context and helps explain patterns identified through quantitative analysis.

---

# Module 5. Prioritising Improvements

## Activity 1. Identify priority tasks

The banking dataset provides the following educational priority classification:

- **High:** Make a bank transfer (70% success).
- **Medium:** Freeze a bank card (86.67%), according to the package's thresholds.
- **Low:** Find a transaction (90% success).
- **Low:** Check account balance (96.67%).
- **Low:** Download an account statement (96.67%).

**Important clarification:** according to the actual `ux_recommendations()` rules, success rates from 80% to below 90% are Medium, while rates of 90% or above are Low.

Therefore, the correct classification is:

| Task | Priority |
|---|---|
| Make a bank transfer | High |
| Freeze a bank card | Medium |
| Find a transaction | Low |
| Check account balance | Low |
| Download an account statement | Low |

Students should be able to explain why a task may still deserve attention even when it is classified as Low.

## Activity 2. Add contextual information

Checking an account balance has a success rate of 96.67%, while making a bank transfer has a success rate of 70%. These tasks therefore show different performance levels. Their consequences also differ, since an unsuccessful bank transfer may have financial implications for users.

A transfer involves a more complex interaction and may have financial consequences if completed incorrectly.

Therefore, researchers may reasonably prioritise the transfer task, even if both tasks have similar performance metrics.

The decision should also consider the nature of the errors and the potential impact on users.

## Activity 3. Develop an improvement plan

A satisfactory improvement plan should:

- Identify a specific task.
- Describe the observed problem.
- Explain its priority.
- Propose an appropriate design improvement.
- Define a metric that can evaluate the expected outcome.

The evaluation metric should be relevant to the problem. For example, a navigation improvement may be evaluated through task success and completion time.

## Challenge 5. Limited resources

There is no single correct prioritisation decision.

A strong proposal should consider task performance, user impact, accessibility, consequences of failure and implementation effort.

For example, students may prioritise assignment submission because difficulties can prevent students from completing academic activities.

Alternatively, they may prioritise course enrolment because it prevents users from accessing the learning environment.

Either decision is acceptable if supported by evidence and a clear justification.

## Reflection: Suggested answers

**1. Should the task with the lowest success rate always be prioritised?**

No. Task importance and consequences of failure must also be considered.

**2. Why are consequences of failure important?**

A usability problem can have different implications depending on the task. Some failures may be inconvenient, while others may prevent access to essential services.

**3. How can accessibility influence prioritisation?**

Problems that exclude users or create barriers for people with different abilities may require particular attention.

**4. Why document prioritisation decisions?**

Documentation makes decisions transparent and allows teams to understand the evidence and assumptions behind them.

---

# Module 6. Evidence-Based Design

## Activity 1. From problem to recommendation

A satisfactory answer should distinguish:

- What the data actually show.
- What problem might explain the observation.
- What additional evidence is required.
- What design change is proposed.
- How the improvement will be evaluated.

For example:

**Observed result:** low success when adding products to the shopping cart.

**Potential problem:** users may not recognise the add-to-cart button.

**Evidence required:** observation of user interaction and analysis of click behaviour.

**Design hypothesis:** increasing the visual prominence of the button may improve discoverability.

**Expected outcome:** higher task success and fewer interaction errors.

**Evaluation metric:** task success rate and error count.

## Activity 2. Define measurable objectives

An appropriate objective identifies the task, the intended improvement and the metric.

Example:

"Increase the success rate for adding products to the shopping cart and reduce the average completion time."

A stronger proposal would specify a measurable target, justified by the baseline results and the evaluation context.

## Activity 3. Evaluate a hypothetical redesign

The hypothetical results show:

- Task success increases from 76.7% to 90%.
- Completion time decreases from 50 to 38 seconds.
- Average errors decrease from 0.43 to 0.20.
- Satisfaction increases from 4.3 to 5.6.

These results suggest an improvement across all four indicators.

However, they do not establish that the redesign caused the improvement.

To strengthen the conclusion, researchers should consider:

- Comparable participant groups.
- Consistent task definitions.
- Equivalent testing conditions.
- Sufficient sample size.
- Potential learning effects.
- Statistical uncertainty.

A controlled comparison or an appropriate experimental design could provide stronger evidence.

## Activity 4. Review an accessibility requirement

### Example: WCAG 2.2 – Success Criterion 2.4.11 Focus Not Obscured (Minimum)

**Level:** AA

**1. What accessibility issue does it address?**

This criterion addresses situations in which a keyboard-focused component is entirely hidden by author-created content. Users who navigate an interface with a keyboard need to be able to identify the element that currently has focus.

**2. Which interface element or interaction does it concern?**

It may concern interactive elements such as buttons, links, form fields and navigation controls. For example, a sticky header, floating panel or fixed notification banner might completely cover the element receiving keyboard focus.

**3. How could you evaluate whether the interface meets the criterion?**

- Navigate through the interface using only the keyboard.
- Use the Tab and Shift + Tab keys to move between interactive elements.
- Observe the position of the focused component throughout navigation.
- Check whether any author-created content completely obscures the focused component.
- Repeat the evaluation with different viewport sizes and relevant interface states.

A manual keyboard evaluation is essential. Automated accessibility tools can help identify potential issues, but they cannot reliably assess every interaction and visual context.

**4. What limitations might an automated accessibility checker have?**

Automated checkers can identify some technical accessibility problems, but they may not detect whether a focused element becomes completely obscured during a particular interaction or viewport configuration.

They cannot replace manual keyboard testing and human evaluation. A complete assessment should combine automated checks, manual inspection and testing with users where appropriate.

**Reference:** W3C. Web Content Accessibility Guidelines (WCAG) 2.2. Success Criterion 2.4.11 Focus Not Obscured (Minimum). https://www.w3.org/TR/WCAG22/#focus-not-obscured-minimum

Referencing WCAG criteria does not, by itself, demonstrate accessibility. Proposed improvements should be evaluated against the relevant success criteria and, where possible, tested with users with different accessibility needs.

**Important:** This is an example of how to apply a WCAG success criterion. Other criteria may also be appropriate depending on the interface and the accessibility problem being investigated.

## Challenge 6. Design with evidence

A strong evidence-based design proposal should address the following elements:

**1. Context and user goal**

Describe the digital service, the relevant users and what they are trying to achieve.

**2. Observed usability problem**

Identify a specific problem affecting the interaction or the completion of a task.

**3. Supporting evidence**

Present relevant findings from the dataset, such as task success rate, completion time, errors or satisfaction. Explain how these findings support the identification of the problem.

**4. Design hypothesis**

Formulate a testable hypothesis connecting the proposed design change with an expected improvement in the user experience.

**5. Proposed improvement**

Describe a specific design intervention and explain how it addresses the identified problem.

**6. Expected outcome**

Explain what improvement is expected and how it could benefit users.

**7. Evaluation metrics**

Select measurable indicators that could be used to assess the impact of the proposed change. These might include task success, completion time, error rate or user satisfaction.

**8. Accessibility considerations**

Identify potential accessibility barriers and explain how the proposed improvement could support users with different abilities and needs. Refer to relevant WCAG 2.2 criteria where appropriate.

**9. Limitations of the available evidence**

Acknowledge limitations such as the use of synthetic data, the absence of qualitative observations or the lack of information about users' individual needs.

Students should distinguish observed findings from interpretations and assumptions. The available metrics can help identify potential usability problems, but they do not necessarily explain their underlying causes.

A strong proposal should be specific, justified by evidence, accessible and open to empirical evaluation.

## Reflection: Suggested answers

**1. What makes a design decision evidence-based?**

It is informed by relevant observations, data or research rather than unsupported assumptions.

**2. Why should a design hypothesis be testable?**

A testable hypothesis allows researchers to evaluate whether a proposed change produces the expected outcome.

**3. How can a redesign introduce new usability problems?**

A change may affect existing workflows, create inconsistencies or introduce new interaction barriers.

**4. Why evaluate improvements after implementation?**

Because design intentions do not guarantee positive outcomes. The impact must be observed and assessed.

---

# Module 7. Applied UX Challenges

## Activity 1. Generate a case study

Students should be able to generate case studies using the four supported domains:

```r
case_ecommerce <- ux_case_study(
  domain = "ecommerce",
  level = "beginner"
)

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

Each case study combines a contextualised learning scenario with the corresponding educational dataset, analysis and recommendations.

## Activity 2. Compare domains

There is no universal answer to which domain has the best UX.

The answer depends on the metrics being compared and the specific tasks involved.

Students should:

- Compare task-level results.
- Identify similarities and differences.
- Consider the context of each domain.
- Avoid interpreting synthetic data as empirical evidence about real services.

## Activity 3. Generate evidence-based recommendations

The package provides recommendations as part of each generated case study.

```r
case_banking <- ux_case_study(
  domain = "banking",
  level = "intermediate"
)

case_banking$recommendations
```

The recommendations include:

- The task being analysed.
- Its success rate, completion time, error count and satisfaction.
- A priority level.
- A suggested recommendation.
- A related learning activity.

A satisfactory interpretation should identify the tasks requiring further investigation and explain why they deserve attention.

For example, in the banking dataset, making a bank transfer has a success rate of 70%, an average completion time of 72.5 seconds and 0.97 errors per attempt.

These results suggest that this task deserves further investigation.

A possible recommendation would be to examine the transfer process, simplify unnecessary steps, improve the clarity of instructions and make error prevention and recovery more effective.

However, the metrics do not establish the causes of the problem. Additional research would be needed to understand users' difficulties.

**Important:** The priority categories generated by `uxlearn` are educational decision-support criteria. They should not be interpreted as universal usability standards.

## Challenge 7. Conduct a complete UX evaluation

A successful report should contain all the requested sections.

### Suggested report structure

**1. Introduction and context**

Describe the digital service, its users and the goals being evaluated.

**2. Evaluation objectives**

Explain what the evaluation aims to understand.

**3. Dataset description**

Identify the dataset, its variables and its synthetic nature.

**4. Quantitative findings**

Report relevant metrics and identify differences between tasks.

**5. Usability problems**

Describe potential problems supported by the observed results.

**6. Prioritised recommendations**

Propose improvements and justify their priority using evidence, context and potential impact.

**7. Accessibility considerations**

Identify potential accessibility barriers and explain how the proposed design could better support users with different abilities and needs. Where relevant, refer to WCAG 2.2 success criteria.

**8. Evaluation strategy**

Explain how the impact of the proposed improvements could be assessed, including usability and accessibility evaluation.

**9. Limitations and conclusions**

Discuss the limitations of synthetic data and the conclusions that can reasonably be drawn.

---

## Final challenge: Example redesign proposal

### Context and original usability problem

The example focuses on making a bank transfer in a digital banking service. In the synthetic banking dataset, this task has a success rate of 70%, an average completion time of 72.5 seconds and 0.97 errors per attempt.

These results suggest that making a bank transfer deserves further investigation. They do not establish why users experience difficulties.

### Evidence and interpretation

The relatively low task success rate, together with the completion time and error count, provides quantitative evidence of a potential usability problem.

Further investigation would be necessary to determine whether the difficulties relate to navigation, terminology, form design, error messages, transaction confirmation or other aspects of the interaction.

### Design hypothesis

If the bank transfer process is reorganised into clearly labelled steps, with understandable instructions and an explicit review before confirmation, users may complete the task more successfully, with fewer errors and less time.

This hypothesis should be tested rather than treated as an established finding.

### Proposed improvement

A possible redesign could:

- Organise the transfer into clearly identified steps.
- Use clear labels and instructions for each required field.
- Explain input requirements before users submit the form.
- Provide understandable validation and error messages.
- Include a review screen showing the recipient, amount and relevant transfer details before confirmation.
- Make it possible to correct information before completing the transaction.

### Expected impact

The redesign is expected to improve task completion, reduce avoidable errors and make the transfer process easier to understand. These outcomes remain hypotheses until evaluated.

### Evaluation metrics

The redesigned process could be evaluated using:

- Task success rate.
- Average task completion time.
- Average number of errors.
- User satisfaction.

A comparable usability evaluation before and after the redesign could help assess whether the proposed changes produce measurable improvements.

### Accessibility considerations

The redesigned form should provide programmatically identifiable labels and clear instructions. WCAG 2.2 Success Criterion 3.3.2 (Labels or Instructions), Level A, is relevant to this requirement.

The evaluation should also include keyboard navigation, visible focus, understandable error identification and appropriate testing with assistive technologies.

### Limitations

The example uses synthetic data and does not include direct observations, interviews or feedback from real banking customers. It is therefore not possible to establish the actual causes of the observed performance differences or predict the impact of the redesign with certainty.

## Module 7 Reflection: Suggested answers

**1. How does the context of a digital service influence UX evaluation?**

The context determines users' goals, the tasks they perform and the consequences of usability problems. For example, difficulties completing a bank transfer may have different implications from difficulties finding a learning resource.

**2. Why should usability metrics be interpreted together rather than independently?**

Each metric describes a different aspect of the experience. A task may have a high success rate but still take a long time or generate errors. Combining metrics provides a more complete understanding of task performance.

**3. What are the limitations of using synthetic datasets to evaluate UX?**

Synthetic datasets are useful for practising analytical procedures, but they do not represent observations of actual users. They cannot establish real-world behaviour, explain the causes of usability problems or demonstrate how a real service performs.

**4. How can quantitative and qualitative evidence complement each other?**

Quantitative evidence can identify patterns and performance differences. Qualitative evidence, such as observations and user comments, can help explain why those patterns occur and how users experience an interaction.

**5. Why should design recommendations be evaluated after implementation?**

A proposed improvement does not guarantee a better experience. Evaluation is necessary to determine whether the change achieves its intended outcomes and whether it introduces new problems.

**6. How can accessibility evaluation contribute to more inclusive digital services?**

Accessibility evaluation helps identify barriers that may prevent people with different abilities and needs from using a digital service. Addressing these barriers can support more equitable and inclusive experiences.

# General Self-Assessment Rubric

Use the following rubric to assess your learning throughout the workbook. Consider the quality of your reasoning, the use of evidence and your ability to apply UX evaluation concepts.

| Criterion | Beginning | Developing | Proficient |
|---|---|---|---|
| Conceptual understanding | Identifies basic UX concepts | Explains concepts and relationships | Applies concepts critically to different digital contexts |
| Metric interpretation | Identifies usability metrics | Interprets results and compares tasks | Evaluates results considering context and limitations |
| Behavioural analysis | Describes observations | Identifies patterns in user behaviour | Develops evidence-based interpretations |
| Problem identification | Identifies potential symptoms | Formulates problem hypotheses | Distinguishes observations, interpretations and possible causes |
| Prioritisation | Lists potential problems | Applies prioritisation criteria | Justifies decisions using context, evidence and potential impact |
| Design recommendations | Suggests general changes | Connects improvements to identified problems | Develops specific, testable and evidence-based proposals |
| Accessibility and inclusive design | Recognises basic accessibility considerations | Identifies potential barriers and relevant requirements | Integrates accessibility into design proposals and evaluation strategies |
| Evaluation strategy | Identifies possible evaluation methods | Selects relevant metrics and evaluation methods | Proposes a coherent strategy to assess usability and accessibility improvements |
| Critical use of evidence | Reports results without considering limitations | Recognises limitations in the available data | Distinguishes findings from assumptions and evaluates the strength of evidence |
| Communication | Presents basic findings | Structures an evaluation report | Communicates clear, coherent and justified conclusions |

## Evidence record

Use this table to support your self-assessment with specific evidence from your work. Record an activity, exercise, analysis or design proposal that demonstrates your current level.

| Criterion | Self-assessed level | Evidence from my work |
|---|---|---|
| Conceptual understanding | | |
| Metric interpretation | | |
| Behavioural analysis | | |
| Problem identification | | |
| Prioritisation | | |
| Design recommendations | | |
| Accessibility and inclusive design | | |
| Evaluation strategy | | |
| Critical use of evidence | | |
| Communication | | |

## Suggested interpretation

- **Beginning:** requires further practice and support to apply the concepts.
- **Developing:** demonstrates an emerging ability to analyse UX evidence and apply evaluation methods.
- **Proficient:** demonstrates the ability to interpret evidence critically, justify design decisions and propose appropriate evaluation strategies.

## Using the rubric for self-assessment

After completing each module:

1. Review the criteria most relevant to the activities you have completed.
2. Select the level that best describes your current performance.
3. Identify one strength and one aspect that requires further development.
4. Revisit the relevant activities or learning materials when necessary.
5. Repeat the self-assessment after completing the applied challenges.

The rubric is intended for formative self-assessment and learning reflection. It is not a validated psychometric instrument or a substitute for a formal assessment.
# Final Reflection

A complete UX evaluation involves more than collecting metrics or identifying interface problems.

It requires understanding users' goals, examining interactions, interpreting evidence, prioritising problems and evaluating proposed improvements.

The central learning principle of this workbook is:

**Measure carefully. Interpret critically. Design with evidence.**

---

*UX Learning Workbook — Answer Key and Self-Assessment Guide.*
