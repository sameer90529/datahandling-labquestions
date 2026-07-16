# Scatter Plot
plot(employee$YearsOfService,
     employee$PerformanceScore,
     pch = 19,
     col = "darkgreen",
     xlab = "Years of Service",
     ylab = "Performance Score",
     main = "Years of Service vs Performance Score")

# Add regression line
abline(lm(PerformanceScore ~ YearsOfService, data = employee),
       col = "red",
       lwd = 2)