#---------------------------------------
# Set 11 : Geographic Data Analysis
#---------------------------------------

# Dataset

city <- c("City A","City B","City C")
population <- c(500000,700000,600000)
temperature <- c(75,68,80)
elevation <- c(1000,800,1200)
latitude <- c(13.08,12.97,17.38)
longitude <- c(80.27,77.59,78.48)

#---------------------------------------
# Build Table
#---------------------------------------

geo_data <- data.frame(
  City = city,
  Population = population,
  Avg_Temperature = temperature,
  Elevation = elevation,
  Latitude = latitude,
  Longitude = longitude
)

print(geo_data)

# Open table in RStudio
View(geo_data)

#---------------------------------------
# 1. Map Chart
#---------------------------------------

plot(longitude,
     latitude,
     pch=19,
     col="blue",
     xlab="Longitude",
     ylab="Latitude",
     main="Distribution of Cities")

text(longitude,
     latitude,
     labels=city,
     pos=3)

#---------------------------------------
# 2. Scatter Plot
#---------------------------------------

plot(population,
     temperature,
     pch=19,
     col="red",
     xlab="Population",
     ylab="Average Temperature",
     main="Temperature vs Population")

text(population,
     temperature,
     labels=city,
     pos=3)

#---------------------------------------
# 3. Display Table
#---------------------------------------

View(geo_data)

