# ==========================================
# SET 15 - STUDENT MINI DATA ANALYSIS
# ==========================================

# Select Student_Mini_Data.csv manually
data <- read.csv(file.choose())

# Display data
View(data)


# ==========================================
# Q1 - HISTOGRAM OF MATH SCORE
# ==========================================

hist(data$Math_Score,
     main = "Distribution of Math Scores",
     xlab = "Math Score",
     ylab = "Frequency",
     col = "skyblue",
     border = "black")


# ==========================================
# Q1 - SCIENCE SCORE BY GENDER BOXPLOT
# ==========================================

boxplot(Science_Score ~ Gender,
        data = data,
        main = "Science Scores by Gender",
        xlab = "Gender",
        ylab = "Science Score",
        col = c("lightpink", "lightblue"))


# ==========================================
# Q2 - STUDY HOURS VS MATH SCORE
# ==========================================

gender_color <- ifelse(data$Gender == "Male",
                       "blue", "red")

plot(data$Study_Hours,
     data$Math_Score,
     main = "Study Hours vs Math Score",
     xlab = "Study Hours",
     ylab = "Math Score",
     pch = 19,
     col = gender_color)

# Regression line
model <- lm(Math_Score ~ Study_Hours, data = data)

abline(model,
       col = "black",
       lwd = 2)

# Gender legend
legend("topleft",
       legend = c("Male", "Female"),
       col = c("blue", "red"),
       pch = 19)


# ==========================================
# Q3 - CONVERT EXAM DATE
# ==========================================

# Remove unwanted spaces from dates
data$Exam_Date <- gsub(" ", "", data$Exam_Date)

# Convert into Date format
data$Exam_Date <- as.Date(data$Exam_Date,
                          format = "%Y-%m-%d")

# Create Month column
data$Month <- format(data$Exam_Date, "%Y-%m")


# ==========================================
# MONTHLY AVERAGE MATH SCORE
# ==========================================

monthly_avg <- aggregate(Math_Score ~ Month,
                         data = data,
                         FUN = mean)

print(monthly_avg)


# ==========================================
# Q3 - MONTHLY TREND LINE CHART
# ==========================================

plot(monthly_avg$Math_Score,
     type = "o",
     main = "Monthly Average Math Score",
     xlab = "Month",
     ylab = "Average Math Score",
     xaxt = "n",
     pch = 19,
     col = "blue")

axis(1,
     at = 1:nrow(monthly_avg),
     labels = monthly_avg$Month)


# ==========================================
# MOVING AVERAGE SMOOTHING
# ==========================================

moving_avg <- stats::filter(monthly_avg$Math_Score,
                            rep(1/2, 2),
                            sides = 1)

plot(monthly_avg$Math_Score,
     type = "o",
     main = "Math Score with Moving Average",
     xlab = "Month",
     ylab = "Average Math Score",
     xaxt = "n",
     pch = 19,
     col = "blue")

lines(moving_avg,
      col = "red",
      lwd = 2)

axis(1,
     at = 1:nrow(monthly_avg),
     labels = monthly_avg$Month)

legend("topleft",
       legend = c("Average Score", "Moving Average"),
       col = c("blue", "red"),
       lty = 1,
       lwd = 2)