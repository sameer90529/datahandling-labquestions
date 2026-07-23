#----------------------------------------
# Product Inventory Management
#----------------------------------------

# Dataset
product_id <- c(1,2,3)
product_name <- c("Product A","Product B","Product C")
category <- c("Electronics","Clothing","Electronics")
quantity <- c(250,175,300)
price <- c(20,15,18)

# Create Table
inventory <- data.frame(
  Product_ID = product_id,
  Product_Name = product_name,
  Category = category,
  Quantity = quantity,
  Price = price
)

print("Inventory Data")
print(inventory)

#----------------------------------------
# 1. Bar Chart
#----------------------------------------

barplot(quantity,
        names.arg = product_name,
        col = c("skyblue","pink","lightgreen"),
        main = "Quantity of Products in Inventory",
        xlab = "Product Name",
        ylab = "Quantity Available")

#----------------------------------------
# 2. Stacked Bar Chart
#----------------------------------------

stack_data <- matrix(c(250,175,300), nrow=1)

colnames(stack_data) <- product_name
rownames(stack_data) <- "Quantity"

barplot(stack_data,
        col="orange",
        main="Stacked Bar Chart of Product Quantities",
        xlab="Products",
        ylab="Quantity")

legend("topright",
       legend="Quantity",
       fill="orange")

#----------------------------------------
# 3. Table
#----------------------------------------

# Create Inventory Table

inventory_data <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  Category = c("Electronics", "Clothing", "Electronics"),
  Quantity_Available = c(250, 175, 300),
  Price = c(20, 15, 18)
)

# Display in Console
print(inventory_data)

# Open as Table (like your screenshot)
View(inventory_data)
