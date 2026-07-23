#---------------------------------------
# Set 13 : Stock Analysis
#---------------------------------------

# Dataset

date <- c("2023-01-01","2023-01-02","2023-01-03")

stockA <- c(100,105,110)
stockB <- c(150,152,148)
stockC <- c(120,118,122)

#---------------------------------------
# Build Table
#---------------------------------------

stock_data <- data.frame(
  Date = date,
  Stock_A = stockA,
  Stock_B = stockB,
  Stock_C = stockC
)

print(stock_data)

# Open table in RStudio
View(stock_data)

#---------------------------------------
# 1. Line Chart
#---------------------------------------

plot(stockA,
     type="o",
     col="blue",
     pch=16,
     ylim=c(90,160),
     xaxt="n",
     xlab="Date",
     ylab="Stock Price",
     main="Stock Prices Over Time")

axis(1, at=1:3, labels=date)

lines(stockB,
      type="o",
      col="red",
      pch=17)

lines(stockC,
      type="o",
      col="green",
      pch=15)

legend("topleft",
       legend=c("Stock A","Stock B","Stock C"),
       col=c("blue","red","green"),
       pch=c(16,17,15),
       lty=1)

#---------------------------------------
# 2. Bar Chart (Daily Percentage Change of Stock A)
#---------------------------------------

percentage_change <- c(
  0,
  ((105-100)/100)*100,
  ((110-105)/105)*100
)

barplot(percentage_change,
        names.arg=date,
        col="orange",
        main="Daily Percentage Change of Stock A",
        xlab="Date",
        ylab="Percentage Change (%)")

#---------------------------------------
# 3. Display Table
#---------------------------------------

View(stock_data)

