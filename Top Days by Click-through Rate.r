# Dataset
ctr <- c(2.3, 2.7, 2.0, 2.4, 2.6)

# Bar Chart
barplot(ctr,
        names.arg = date,
        col = "lightgreen",
        xlab = "Date",
        ylab = "Click-through Rate (%)",
        main = "Top Days by Click-through Rate")