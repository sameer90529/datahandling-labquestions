sales_desc <- product_data[order(-product_data$Sales), ]

barplot(
  sales_desc$Sales,
  names.arg = sales_desc$Category,
  main = "Sales Conversion Funnel",
  xlab = "Product Category",
  ylab = "Sales ($)",
  col = c("skyblue", "lightgreen", "pink")
)

months <- c(1, 2, 3)

sales_area <- rbind(
  sales_data$January,
  sales_data$February,
  sales_data$March
)

matplot(
  months,
  sales_area,
  type = "l",
  lty = 1,
  lwd = 2,
  col = c("red", "blue", "green"),
  xaxt = "n",
  xlab = "Month",
  ylab = "Sales",
  main = "Overall Sales Trend"
)

axis(
  1,
  at = months,
  labels = c("January", "February", "March")
)

legend(
  "topleft",
  legend = sales_data$Product,
  col = c("red", "blue", "green"),
  lty = 1,
  lwd = 2
)
