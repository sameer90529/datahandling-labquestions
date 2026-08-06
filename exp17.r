# Install package (Run only once)
install.packages("corrplot")

# Load library
library(corrplot)

# Create Dataset
vehicle <- data.frame(
  Vehicle_ID = c("V1","V2","V3","V4","V5"),
  Engine_Size = c(1.5, 2.0, 3.0, 2.5, 1.8),
  Horsepower = c(110, 150, 250, 200, 130),
  Fuel_Efficiency = c(18, 15, 12, 14, 17),
  Top_Speed = c(180, 200, 250, 220, 190),
  Safety_Rating = c(4, 5, 5, 4, 3)
)

# Select only numerical columns
vehicle_num <- vehicle[, c("Engine_Size",
                           "Horsepower",
                           "Fuel_Efficiency",
                           "Top_Speed",
                           "Safety_Rating")]

# Calculate Correlation Matrix
cor_matrix <- cor(vehicle_num)

# Display Correlation Matrix
print(cor_matrix)

# Create Correlation Heatmap
corrplot(cor_matrix,
         method = "color",
         type = "upper",
         addCoef.col = "black",
         tl.col = "black",
         tl.srt = 45)