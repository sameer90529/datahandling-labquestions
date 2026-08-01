# Student Academic Performance Analysis

# Department names
departments <- c("Computer Science", "Mechanical", "Civil", "Electronics")

# Average scores
avg_scores <- c(88, 76, 81, 85)

#-----------------------------
# 1. Bar Plot
#-----------------------------
barplot(avg_scores,
        names.arg = departments,
        col = "skyblue",
        main = "Average Scores by Department",
        xlab = "Departments",
        ylab = "Average Score")

#-----------------------------
# 2. Grouped Bar Plot
#-----------------------------

scores <- matrix(c(
  90, 80, 85, 88,   # Mathematics
  92, 75, 82, 89,   # Programming
  85, 73, 78, 84    # Physics
), nrow = 3, byrow = TRUE)

colnames(scores) <- departments
rownames(scores) <- c("Mathematics", "Programming", "Physics")

barplot(scores,
        beside = TRUE,
        col = c("red", "blue", "green"),
        legend.text = rownames(scores),
        main = "Subject-wise Average Scores",
        xlab = "Departments",
        ylab = "Average Score")

#-----------------------------
# 3. Histogram
#-----------------------------

student_scores <- c(
  65,70,72,75,78,80,82,84,85,87,
  88,90,91,92,93,75,77,79,81,86,
  89,94,95,68,73,83,85,88,90,92
)

hist(student_scores,
     col = "lightgreen",
     main = "Distribution of Student Scores",
     xlab = "Scores",
     ylab = "Number of Students")

#-----------------------------
# 4. Boxplot
#-----------------------------

cs <- c(85,88,90,92,87,89,91,86,93,88)
mech <- c(70,72,75,78,80,74,76,77,79,81)
civil <- c(78,80,82,81,79,83,84,77,85,80)
ece <- c(84,86,88,85,87,89,90,83,91,88)

boxplot(cs, mech, civil, ece,
        names = c("Computer Science",
                  "Mechanical",
                  "Civil",
                  "Electronics"),
        col = c("lightblue", "pink", "lightgreen", "orange"),
        main = "Department-wise Score Distribution",
        xlab = "Departments",
        ylab = "Scores")