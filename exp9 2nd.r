survey_data <- data.frame(
  Survey_ID = c(1, 2, 3),
  Question1 = c("A", "B", "C"),
  Question2 = c("B", "A", "A"),
  Question3 = c("C", "D", "B")
)

# Display Dataset
print(survey_data)

responses <- sort(unique(c(
  survey_data$Question1,
  survey_data$Question2,
  survey_data$Question3
)))

q1 <- table(factor(survey_data$Question1, levels = responses))
q2 <- table(factor(survey_data$Question2, levels = responses))
q3 <- table(factor(survey_data$Question3, levels = responses))

response_matrix <- rbind(q1, q2, q3)

barplot(
  response_matrix,
  beside = FALSE,
  col = c("red", "green", "blue"),
  legend.text = c("Question1", "Question2", "Question3"),
  main = "Overall Distribution of Responses",
  xlab = "Answer Options",
  ylab = "Count"
)
