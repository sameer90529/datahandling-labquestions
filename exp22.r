# ============================================================
# SET 22 - LIBRARY BORROWING RECORDS
# ============================================================

# Load ggplot2
library(ggplot2)


# ============================================================
# CREATE DATASET
# ============================================================

library_data <- data.frame(
  User_ID = c(1, 2, 3, 4, 5),
  Books_Borrowed = c(2, 5, 3, 6, 1),
  Days_Kept = c(10, 25, 14, 30, 7),
  Fine_Amount = c(0, 15, 0, 20, 0)
)

# Display dataset
print(library_data)


# ============================================================
# QUESTION 1
# HISTOGRAM OF BOOKS BORROWED
# ============================================================

ggplot(
  library_data,
  aes(x = Books_Borrowed)
) +
  geom_histogram(
    binwidth = 1,
    fill = "skyblue",
    color = "black"
  ) +
  labs(
    title = "Distribution of Books Borrowed",
    x = "Books Borrowed",
    y = "Number of Users"
  ) +
  theme_minimal()


# ============================================================
# QUESTION 2
# PIE CHART FOR USERS WITH AND WITHOUT FINES
# ============================================================

# Create fine status
library_data$Fine_Status <- ifelse(
  library_data$Fine_Amount > 0,
  "With Fine",
  "Without Fine"
)

# Count users
fine_count <- table(library_data$Fine_Status)

# Pie chart
pie(
  fine_count,
  labels = paste(
    names(fine_count),
    fine_count,
    sep = " - "
  ),
  main = "Users With and Without Fines",
  col = c("lightgreen", "salmon")
)


# ============================================================
# QUESTION 3
# BAR CHART OF FINE AMOUNTS BY USER
# ============================================================

ggplot(
  library_data,
  aes(
    x = factor(User_ID),
    y = Fine_Amount
  )
) +
  geom_bar(
    stat = "identity",
    fill = "orange",
    color = "black"
  ) +
  labs(
    title = "Fine Amount by User",
    x = "User ID",
    y = "Fine Amount"
  ) +
  theme_minimal()


# ============================================================
# QUESTION 4
# SCATTER PLOT OF DAYS KEPT VS FINE AMOUNT
# ============================================================

ggplot(
  library_data,
  aes(
    x = Days_Kept,
    y = Fine_Amount
  )
) +
  geom_point(
    size = 4
  ) +
  labs(
    title = "Days Kept vs Fine Amount",
    x = "Days Kept",
    y = "Fine Amount"
  ) +
  theme_minimal()