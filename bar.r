
month <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun")
sales <- c(1200, 1500, 1800, 1700, 2100, 2500)

barplot(sales,
        col = "blue",
        xlab = "Month",
        ylab = "Sales",
        main = "Monthly Sales Trend",
        names.arg = month)