# Sample Data
month <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")
sales <- c(1200, 1500, 1800, 1700, 2100, 2500)

# Create Line Chart
plot(sales,
     type = "o",
     col = "blue",
     xlab = "Month",
     ylab = "Sales",
     main = "Monthly Sales Trend",
     xaxt = "n")

# Add Month Labels on X-axis
axis(1, at = 1:length(month), labels = month) 