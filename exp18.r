# Load Libraries
library(ggplot2)
library(tidyr)

# Create Dataset
student <- data.frame(
  Student_ID = c("S1","S2","S3","S4","S5"),
  Age = c(19,21,20,22,23),
  Study_Hours = c(12,8,15,10,7),
  Attendance = c(90,70,95,85,60),
  Test_Score = c(85,70,92,80,65),
  Participation_Score = c(8,7,9,8,6)
)

print(student)

#--------------------------------------------------
# Question 1
# Stacked Area Chart
#--------------------------------------------------

student_long <- pivot_longer(
  student,
  cols = c(Test_Score, Participation_Score),
  names_to = "Score_Type",
  values_to = "Score"
)

ggplot(student_long,
       aes(x = Student_ID,
           y = Score,
           fill = Score_Type,
           group = Score_Type)) +
  geom_area(alpha = 0.7) +
  labs(
    title = "Test Score and Participation Score Across Students",
    x = "Student ID",
    y = "Score"
  ) +
  scale_fill_manual(values = c("skyblue","orange")) +
  theme_minimal()

#--------------------------------------------------
# Question 2
# Boxplot of Study Hours by Attendance Quartiles
#--------------------------------------------------

student$Attendance_Quartile <- cut(
  student$Attendance,
  breaks = quantile(student$Attendance,
                    probs = seq(0,1,0.25)),
  include.lowest = TRUE,
  labels = c("Q1","Q2","Q3","Q4")
)

ggplot(student,
       aes(x = Attendance_Quartile,
           y = Study_Hours,
           fill = Attendance_Quartile)) +
  geom_boxplot() +
  labs(
    title = "Study Hours by Attendance Quartiles",
    x = "Attendance Quartile",
    y = "Study Hours"
  ) +
  scale_fill_manual(values = c("pink","lightgreen","skyblue","orange")) +
  theme_minimal()

#--------------------------------------------------
# Question 3
# Density Plot for Test Score
#--------------------------------------------------

ggplot(student,
       aes(x = Test_Score)) +
  geom_density(fill = "lightblue",
               color = "blue",
               alpha = 0.6) +
  labs(
    title = "Density Plot of Test Score",
    x = "Test Score",
    y = "Density"
  ) +
  theme_minimal()

#--------------------------------------------------
# Question 4
# Export Dataset for Tableau
#--------------------------------------------------

write.csv(student,
          "student_academic_performance.csv",
          row.names = FALSE)