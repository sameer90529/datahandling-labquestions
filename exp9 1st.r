survey_data <- data.frame(
  Survey_ID = c(1, 2, 3),
  Question1 = c("A", "B", "C"),
  Question2 = c("B", "A", "A"),
  Question3 = c("C", "D", "B")
)

# Display Dataset
print(survey_data)

q1_count <- table(survey_data$Question1)

barplot(
  q1_count,
  main = "Distribution of Answers for Question 1",
  xlab = "Answers",
  ylab = "Frequency",
  col = c("skyblue", "lightgreen", "pink")
)