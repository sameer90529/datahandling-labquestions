
months <- c("jan","Feb","march","april","may")
sales <- c(1200,1100,1500,1600,1000)
plot(sales,
     type="o",
     col="blue",
     xlab="months",
     ylab="sales",
     main="salesforthemonth",
     xaxt="n")
axis(1,at=1:length(months),labels=sales)

barplot(sales,
        names.arg=months,
        xlab="months",
        ylab="sales",
        main="sales for the months")
