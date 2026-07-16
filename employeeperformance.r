# Create the dataset
employee <- data.frame(
  EmployeeID = c(1, 2, 3, 4, 5),
  Department = c("Sales", "HR", "Marketing", "Sales", "HR"),
  YearsOfService = c(5, 3, 7, 4, 2),
  PerformanceScore = c(85, 92, 78, 90, 76)
)

print(employee)

# Line Chart
plot(employee$EmployeeID,
     employee$PerformanceScore,
     type = "o",
     col = "blue",
     pch = 16,
     xlab = "Employee ID",
     ylab = "Performance Score",
     main = "Employee Performance Trend")

legend("topright",
       legend = "Performance Score",
       col = "blue",
       lty = 1,
       pch = 16) 