sales_data <- data.frame(
  Product = c("Product A", "Product B", "Product C"),
  January = c(2000, 1500, 1200),
  February = c(2200, 1800, 1400),
  March = c(2400, 1600, 1100)
)

# Display Dataset
print(sales_data)


sales_matrix <- as.matrix(sales_data[,2:4])

barplot(
  sales_matrix,
  beside = TRUE,
  col = c("skyblue", "lightgreen", "pink"),
  names.arg = c("January", "February", "March"),
  main = "Quarter 1 Product Sales",
  xlab = "Months",
  ylab = "Sales",
  legend.text = sales_data$Product
)