# ============================================================
# SET 17 – VEHICLE PERFORMANCE ANALYSIS
# ============================================================

# -----------------------------
# 1. CREATE THE DATASET
# -----------------------------

vehicle <- data.frame(
  Vehicle_ID = c("V1", "V2", "V3", "V4", "V5"),
  Engine_Size = c(1.5, 2.0, 3.0, 2.5, 1.8),
  Horsepower = c(110, 150, 250, 200, 130),
  Fuel_Efficiency = c(18, 15, 12, 14, 17),
  Top_Speed = c(180, 200, 250, 220, 190),
  Safety_Rating = c(4, 5, 5, 4, 3)
)

# Display dataset
print(vehicle)


# ============================================================
# LOAD REQUIRED PACKAGES
# ============================================================

# Install packages if required:
# install.packages("ggplot2")
# install.packages("reshape2")

library(ggplot2)
library(reshape2)


# ============================================================
# QUESTION 1
# VIOLIN PLOT
# Fuel Efficiency vs Safety Rating
# ============================================================

# Convert Safety Rating into categorical variable
vehicle$Safety_Rating <- as.factor(vehicle$Safety_Rating)

ggplot(vehicle,
       aes(x = Safety_Rating,
           y = Fuel_Efficiency,
           fill = Safety_Rating)) +
  
  geom_violin(trim = FALSE) +
  
  geom_boxplot(
    width = 0.1,
    fill = "white"
  ) +
  
  labs(
    title = "Fuel Efficiency Distribution by Safety Rating",
    x = "Safety Rating",
    y = "Fuel Efficiency (km/l)"
  ) +
  
  theme_minimal()


# ============================================================
# QUESTION 2
# SCATTER PLOT
# Horsepower vs Top Speed
# Color based on Engine Size
# ============================================================

ggplot(vehicle,
       aes(
         x = Horsepower,
         y = Top_Speed,
         color = Engine_Size
       )) +
  
  geom_point(size = 4) +
  
  geom_text(
    aes(label = Vehicle_ID),
    vjust = -1,
    size = 4
  ) +
  
  labs(
    title = "Horsepower vs Top Speed",
    x = "Horsepower",
    y = "Top Speed (km/h)",
    color = "Engine Size (L)"
  ) +
  
  theme_minimal()


# ============================================================
# SCATTER PLOT WITH TREND LINE
# ============================================================

ggplot(vehicle,
       aes(
         x = Horsepower,
         y = Top_Speed,
         color = Engine_Size
       )) +
  
  geom_point(size = 4) +
  
  geom_smooth(
    method = "lm",
    se = FALSE,
    color = "black"
  ) +
  
  geom_text(
    aes(label = Vehicle_ID),
    vjust = -1,
    size = 4
  ) +
  
  labs(
    title = "Horsepower vs Top Speed with Trend Line",
    x = "Horsepower",
    y = "Top Speed (km/h)",
    color = "Engine Size (L)"
  ) +
  
  theme_minimal()


# ============================================================
# CORRELATION BETWEEN HORSEPOWER AND TOP SPEED
# ============================================================

horsepower_speed_correlation <-
  cor(
    vehicle$Horsepower,
    vehicle$Top_Speed
  )

print(horsepower_speed_correlation)


# ============================================================
# QUESTION 3
# CORRELATION MATRIX
# ============================================================

# Select all numerical variables
numeric_data <- vehicle[, c(
  "Engine_Size",
  "Horsepower",
  "Fuel_Efficiency",
  "Top_Speed",
  "Safety_Rating"
)]

# Create correlation matrix
cor_matrix <- cor(numeric_data)

# Display correlation matrix
print(cor_matrix)


# ============================================================
# CORRELATION HEATMAP
# ============================================================

# Convert correlation matrix into long format
cor_data <- melt(cor_matrix)

ggplot(
  cor_data,
  aes(
    x = Var1,
    y = Var2,
    fill = value
  )
) +
  
  geom_tile() +
  
  geom_text(
    aes(label = round(value, 2)),
    color = "black",
    size = 4
  ) +
  
  scale_fill_gradient2(
    low = "blue",
    mid = "white",
    high = "red",
    midpoint = 0,
    limits = c(-1, 1)
  ) +
  
  labs(
    title = "Correlation Heatmap of Vehicle Performance",
    x = "",
    y = "",
    fill = "Correlation"
  ) +
  
  theme_minimal() +
  
  theme(
    axis.text.x = element_text(
      angle = 45,
      hjust = 1
    )
  )


# ============================================================
# FIND VARIABLES MOST ASSOCIATED WITH TOP SPEED
# ============================================================

top_speed_correlation <-
  cor_matrix[, "Top_Speed"]

print(top_speed_correlation)


# Sort correlations by absolute strength
sorted_correlation <-
  sort(
    abs(top_speed_correlation),
    decreasing = TRUE
  )

print(sorted_correlation)