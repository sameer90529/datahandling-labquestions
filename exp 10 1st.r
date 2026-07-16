product_data <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

# Display Dataset
print(product_data)

sales_desc <- product_data[order(-product_data$Sales), ]

barplot(
  sales_desc$Sales,
  names.arg = sales_desc$Category,
  main = "Sales Conversion Funnel",
  xlab = "Product Category",
  ylab = "Sales ($)",
  col = c("skyblue", "lightgreen", "pink")
)