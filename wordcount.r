install.packages("wordcloud")
install.packages("RColorBrewer")

library(wordcloud)
library(RColorBrewer)

# Sample customer feedback
feedback <- c(
  "Excellent service and friendly staff",
  "Very satisfied with the product quality",
  "Fast delivery and excellent support",
  "Good quality but delivery was slow",
  "Amazing experience and great customer service",
  "Product quality is excellent and affordable",
  "Satisfied with the service and fast response"
)

# Create the word cloud
wordcloud(
  words = feedback,
  scale = c(4, 1),
  min.freq = 1,
  max.words = 100,
  random.order = FALSE,
  rot.per = 0.35,
  colors = brewer.pal(8, "Dark2")
)

# Add a title
title("Customer Feedback Word Cloud")̥ word count