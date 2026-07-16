# Dataset
date <- c("2023-01-01", "2023-01-02", "2023-01-03",
          "2023-01-04", "2023-01-05")

page_views <- c(1500, 1600, 1400, 1650, 1800)

# Line Chart
plot(page_views,
     type = "o",
     xaxt = "n",
     xlab = "Date",
     ylab = "Page Views",
     main = "Daily Page Views Trend")

axis(1, at = 1:length(date), labels = date)