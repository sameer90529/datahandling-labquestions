customer_data <- data.frame(
  Customer_ID = c(1, 2, 3),
  Age = c(28, 35, 42),
  Gender = c("Female", "Male", "Female"),
  Income = c(50000, 60000, 75000)
)

# Display Dataset
print(customer_data)
gender_count <- table(customer_data$Gender)

pie(
  gender_count,
  labels = names(gender_count),
  main = "Customer Distribution by Gender",
  col = c("pink", "lightblue")
)