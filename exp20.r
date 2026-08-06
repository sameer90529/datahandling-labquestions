#==========================================
# SET 20 – Hospital Appointment Analysis
#==========================================

# Load Library
library(ggplot2)

#------------------------------------------
# Create Dataset
#------------------------------------------

hospital <- data.frame(
  Patient_ID = c(1,2,3,4,5),
  Age = c(25,40,35,50,29),
  Waiting_Time = c(2,5,1,7,3),
  Appointment_Status = c("Attended","Missed","Attended","Missed","Attended")
)

print(hospital)

#==========================================
# Question 1
# Histogram of Patient Ages
#==========================================

ggplot(hospital, aes(x = Age)) +
  geom_histogram(
    binwidth = 5,
    fill = "skyblue",
    color = "black"
  ) +
  labs(
    title = "Histogram of Patient Ages",
    x = "Age",
    y = "Number of Patients"
  ) +
  theme_minimal()

#==========================================
# Question 2
# Pie Chart of Appointment Status
#==========================================

status_count <- as.data.frame(table(hospital$Appointment_Status))
colnames(status_count) <- c("Status","Count")

ggplot(status_count,
       aes(x = "", y = Count, fill = Status)) +
  geom_bar(
    stat = "identity",
    width = 1
  ) +
  coord_polar(theta = "y") +
  geom_text(
    aes(label = Count),
    position = position_stack(vjust = 0.5),
    color = "white",
    size = 5
  ) +
  labs(
    title = "Appointment Status Distribution"
  ) +
  theme_void()

#==========================================
# Question 3
# Bar Chart of Waiting Time by Patient
#==========================================

ggplot(hospital,
       aes(x = factor(Patient_ID),
           y = Waiting_Time,
           fill = factor(Patient_ID))) +
  geom_bar(stat = "identity") +
  geom_text(
    aes(label = Waiting_Time),
    vjust = -0.5,
    size = 5
  ) +
  labs(
    title = "Waiting Time by Patient",
    x = "Patient ID",
    y = "Waiting Time (Days)"
  ) +
  theme_minimal()

#==========================================
# Question 4
# Scatter Plot of Age vs Waiting Time
#==========================================

ggplot(hospital,
       aes(x = Age,
           y = Waiting_Time)) +
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
    title = "Age vs Waiting Time",
    x = "Age",
    y = "Waiting Time (Days)"
  ) +
  theme_minimal()

#==========================================
# Export Dataset for Tableau (Optional)
#==========================================

write.csv(
  hospital,
  "Hospital_Appointments.csv",
  row.names = FALSE
)

cat("Hospital_Appointments.csv exported successfully!\n")