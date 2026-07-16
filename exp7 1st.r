customer_data <- data.frame(
  Customer_ID = c(1, 2, 3),
  Age = c(28, 35, 42),
  Gender = c("Female", "Male", "Female"),
  Income = c(50000, 60000, 75000)
)

# Display Dataset
print(customer_data)
barplot(
  customer_data$Age,
  names.arg = customer_data$Customer_ID,
  main = "Distribution of Customer Ages",
  xlab = "Customer ID",
  ylab = "Age",
  col = c("lightblue", "lightgreen", "pink")
)