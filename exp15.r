# Install package (Run only once)
install.packages("vioplot")

# Load package
library(vioplot)

# Display 4 graphs in one window
par(mfrow = c(2,2))

#-----------------------------------------
# 1. Stacked Bar Chart
#-----------------------------------------
sales <- matrix(c(
  5000,4500,4000,5500,
  3000,2800,2600,3200,
  2500,2300,2200,2700,
  1800,1700,1600,2000
), nrow = 4, byrow = TRUE)

rownames(sales) <- c("Groceries","Dairy","Beverages","Snacks")
colnames(sales) <- c("Spring","Summer","Monsoon","Winter")

barplot(sales,
        col = c("red","blue","green","orange"),
        main = "Stacked Bar Chart",
        xlab = "Seasons",
        ylab = "Sales",
        legend.text = rownames(sales),
        cex.names = 0.8)

#-----------------------------------------
# 2. Heatmap
#-----------------------------------------
heatmap(sales,
        Rowv = NA,
        Colv = NA,
        scale = "none",
        col = heat.colors(20),
        margins = c(4,4),
        main = "Heatmap")

#-----------------------------------------
# 3. Density Plot
#-----------------------------------------
customer_spending <- c(
  50,60,70,80,90,100,110,120,130,140,
  150,160,170,180,190,200,210,220,230,240,
  250,260,270,280,290,300,310,320,330,340
)

plot(density(customer_spending),
     main = "Density Plot",
     xlab = "Purchase Amount",
     ylab = "Density",
     col = "blue",
     lwd = 2)

#-----------------------------------------
# 4. Violin Plot
#-----------------------------------------
groceries <- c(200,220,210,230,240,250,260,225,235,245)
dairy <- c(120,130,125,140,145,150,135,138,142,148)
beverages <- c(90,95,100,110,105,115,120,98,102,108)
snacks <- c(60,65,70,75,68,72,78,74,69,71)

vioplot(groceries, dairy, beverages, snacks,
        names = c("Groceries","Dairy","Beverages","Snacks"),
        col = c("skyblue","lightgreen","pink","orange"),
        main = "Violin Plot",
        ylab = "Sales")

# Reset layout
par(mfrow = c(1,1))