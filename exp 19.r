#==================================================
# SET 19 – Mobile App Usage Analysis
#==================================================

# Load Libraries
library(ggplot2)
library(dplyr)

#--------------------------------------------------
# Create Dataset
#--------------------------------------------------

mobile <- data.frame(
  User_ID = c("U01","U02","U03","U04","U05","U06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Age = c(20,22,19,21,23,20),
  Screen_Time = c(4.5,6.0,3.2,7.1,2.8,5.4),
  App_Usage_Count = c(18,25,12,30,10,22),
  Data_Used = c(2.4,3.8,1.6,4.5,1.2,3.1),
  Satisfaction = c(3,5,3,5,2,4),
  Usage_Date = as.Date(c(
    "2025-01-08",
    "2025-01-08",
    "2025-02-11",
    "2025-02-11",
    "2025-03-14",
    "2025-03-14"
  ))
)

# Check Structure
str(mobile)

#==================================================
# Question 1
# Histogram + Density Plot
#==================================================

ggplot(mobile, aes(x = Screen_Time)) +
  geom_histogram(
    aes(y = after_stat(density)),
    binwidth = 1,
    fill = "skyblue",
    color = "black"
  ) +
  geom_density(
    color = "red",
    fill = "pink",
    alpha = 0.3,
    linewidth = 1.2
  ) +
  labs(
    title = "Histogram and Density Plot of Screen Time",
    x = "Screen Time (Hours)",
    y = "Density"
  ) +
  theme_minimal()

#==================================================
# Question 2
# Scatter Plot + Trend Line + Correlation
#==================================================

ggplot(mobile,
       aes(x = Screen_Time,
           y = Data_Used)) +
  geom_point(
    color = "blue",
    size = 4
  ) +
  geom_smooth(
    method = "lm",
    se = FALSE,
    color = "red",
    linewidth = 1
  ) +
  labs(
    title = "Screen Time vs Data Used",
    x = "Screen Time (Hours)",
    y = "Data Used (GB)"
  ) +
  theme_minimal()

# Correlation

correlation <- cor(
  mobile$Screen_Time,
  mobile$Data_Used
)

print(correlation)

#==================================================
# Question 3
# Average Satisfaction by Gender
#==================================================

avg_satisfaction <- mobile %>%
  group_by(Gender) %>%
  summarise(
    Average_Satisfaction = mean(Satisfaction),
    .groups = "drop"
  )

print(avg_satisfaction)

ggplot(avg_satisfaction,
       aes(x = Gender,
           y = Average_Satisfaction,
           fill = Gender)) +
  geom_bar(
    stat = "identity",
    width = 0.6
  ) +
  geom_text(
    aes(label = round(Average_Satisfaction,2)),
    vjust = -0.5,
    size = 5
  ) +
  labs(
    title = "Average Satisfaction by Gender",
    x = "Gender",
    y = "Average Satisfaction"
  ) +
  theme_minimal()

#==================================================
# Question 4
# Export CSV for Tableau
#==================================================

write.csv(
  mobile,
  "Mobile_App_Usage.csv",
  row.names = FALSE
)

cat("CSV file exported successfully!\n")