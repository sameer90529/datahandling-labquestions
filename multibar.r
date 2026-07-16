# Create the dataset
employee <- data.frame(
  EmployeeID = c(1, 2, 3, 4, 5),
  Department = c("Sales", "HR", "Marketing", "Sales", "HR"),
  YearsOfService = c(5, 3, 7, 4, 2),
  PerformanceScore = c(85, 92, 78, 90, 76)
)

print(employee)

# Count employees in each department
dept_count <- table(employee$Department)

# Bar Chart
barplot(dept_count,
        col = c("red", "green", "blue"),
        xlab = "Department",
        ylab = "Number of Employees",
        main = "Employees by Department")