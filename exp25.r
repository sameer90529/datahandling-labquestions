# ============================================================
# SET 25 - FITNESS TRACKER ANALYSIS
# ============================================================

# Load ggplot2
library(ggplot2)


# ============================================================
# CREATE DATASET
# ============================================================

fitness_data <- data.frame(
  User_ID = c(1, 2, 3, 4, 5),
  Steps = c(7000, 10000, 8500, 12000, 6500),
  Calories_Burned = c(250, 400, 320, 500, 220),
  Active_Minutes = c(40, 60, 50, 75, 35)
)

# Display dataset
print(fitness_data)


# ============================================================
# QUESTION 1
# HISTOGRAM OF DAILY STEPS
# ============================================================

ggplot(
  fitness_data,
  aes(x = Steps)
) +
  geom_histogram(
    binwidth = 1000,
    fill = "skyblue",
    color = "black"
  ) +
  labs(
    title = "Distribution of Daily Steps",
    x = "Daily Steps",
    y = "Number of Users"
  ) +
  theme_minimal()


# ============================================================
# QUESTION 2
# PIE CHART OF ACTIVITY LEVEL CATEGORIES
# ============================================================

# Create activity categories based on daily steps

fitness_data$Activity_Level <- ifelse(
  fitness_data$Steps < 7500,
  "Low",
  ifelse(
    fitness_data$Steps < 10000,
    "Moderate",
    "High"
  )
)

# Display activity levels
print(fitness_data)


# Count activity levels
activity_count <- table(fitness_data$Activity_Level)


# Create pie chart

pie(
  activity_count,
  labels = paste(
    names(activity_count),
    activity_count,
    sep = " - "
  ),
  main = "Activity Level Distribution",
  col = c("lightcoral", "orange", "lightgreen")
)


# ============================================================
# QUESTION 3
# BAR CHART OF CALORIES BURNED BY USER
# ============================================================

ggplot(
  fitness_data,
  aes(
    x = factor(User_ID),
    y = Calories_Burned
  )
) +
  geom_bar(
    stat = "identity",
    fill = "steelblue",
    color = "black"
  ) +
  labs(
    title = "Calories Burned by User",
    x = "User ID",
    y = "Calories Burned"
  ) +
  theme_minimal()


# ============================================================
# QUESTION 4
# SCATTER PLOT OF STEPS VS CALORIES BURNED
# ============================================================

ggplot(
  fitness_data,
  aes(
    x = Steps,
    y = Calories_Burned
  )
) +
  geom_point(
    size = 4
  ) +
  labs(
    title = "Steps vs Calories Burned",
    x = "Daily Steps",
    y = "Calories Burned"
  ) +
  theme_minimal()