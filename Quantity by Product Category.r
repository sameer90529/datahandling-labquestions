# Quantity by category
inventory <- matrix(c(250,175,
                      300,200,
                      220,0),
                    nrow = 3,
                    byrow = TRUE)

rownames(inventory) <- c("Electronics","Furniture","Accessories")
colnames(inventory) <- c("Group 1","Group 2")

# Stacked Bar Chart
barplot(inventory,
        col = c("red","blue","green"),
        main = "Quantity by Product Category",
        xlab = "Groups",
        ylab = "Quantity",
        legend.text = rownames(inventory))