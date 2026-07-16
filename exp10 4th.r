
sales_desc <- product_data[order(-product_data$Sales), ]

barplot(
  sales_desc$Sales,
  names.arg = sales_desc$Category,
  main = "Sales Conversion Funnel",
  xlab = "Product Category",
  ylab = "Sales ($)",
  col = c("skyblue", "lightgreen", "pink")
)
pie(
  product_data$Sales,
  labels = product_data$Category,
  main = "Sales Distribution Across Categories",
  col = c("skyblue", "lightgreen", "pink")
)