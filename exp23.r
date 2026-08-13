# ============================================================
# SET 23 - AIRLINE PASSENGER ANALYSIS
# ============================================================

# Load ggplot2
library(ggplot2)


# ============================================================
# CREATE DATASET
# ============================================================

airline_data <- data.frame(
  Passenger_ID = c(1, 2, 3, 4, 5),
  Age = c(28, 45, 33, 52, 39),
  Flight_Hours = c(2, 8, 5, 10, 6),
  Satisfaction = c("High", "Medium", "High", "Low", "Medium")
)

# Display dataset
print(airline_data)


# ============================================================
# QUESTION 1
# HISTOGRAM OF PASSENGER AGES
# ============================================================

ggplot(
  airline_data,
  aes(x = Age)
) +
  geom_histogram(
    binwidth = 5,
    fill = "skyblue",
    color = "black"
  ) +
  labs(
    title = "Distribution of Passenger Ages",
    x = "Age",
    y = "Number of Passengers"
  ) +
  theme_minimal()


# ============================================================
# QUESTION 2
# PIE CHART OF SATISFACTION LEVELS
# ============================================================

satisfaction_count <- table(airline_data$Satisfaction)

pie(
  satisfaction_count,
  labels = paste(
    names(satisfaction_count),
    satisfaction_count,
    sep = " - "
  ),
  main = "Passenger Satisfaction Levels",
  col = c("lightgreen", "orange", "salmon")
)


# ============================================================
# QUESTION 3
# BAR CHART OF FLIGHT HOURS BY PASSENGER
# ============================================================

ggplot(
  airline_data,
  aes(
    x = factor(Passenger_ID),
    y = Flight_Hours
  )
) +
  geom_bar(
    stat = "identity",
    fill = "steelblue",
    color = "black"
  ) +
  labs(
    title = "Flight Hours by Passenger",
    x = "Passenger ID",
    y = "Flight Hours"
  ) +
  theme_minimal()


# ============================================================
# QUESTION 4
# SCATTER PLOT OF AGE VS FLIGHT HOURS
# ============================================================

ggplot(
  airline_data,
  aes(
    x = Age,
    y = Flight_Hours
  )
) +
  geom_point(
    size = 4
  ) +
  labs(
    title = "Age vs Flight Hours",
    x = "Age",
    y = "Flight Hours"
  ) +
  theme_minimal()