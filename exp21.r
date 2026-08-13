# ============================================================
# SET 21 - MOVIE RATINGS ANALYSIS
# ============================================================

# Load ggplot2
library(ggplot2)


# ============================================================
# CREATE DATASET
# ============================================================

movie_data <- data.frame(
  Movie_ID = c(1, 2, 3, 4, 5),
  Genre = c("Action", "Comedy", "Drama", "Action", "Comedy"),
  Rating = c(4.5, 3.8, 4.2, 4.7, 3.5),
  Duration = c(120, 90, 140, 130, 95)
)

# Display dataset
print(movie_data)


# ============================================================
# QUESTION 1
# HISTOGRAM OF MOVIE RATINGS
# ============================================================

ggplot(
  movie_data,
  aes(x = Rating)
) +
  geom_histogram(
    binwidth = 0.2,
    fill = "skyblue",
    color = "black"
  ) +
  labs(
    title = "Distribution of Movie Ratings",
    x = "Movie Rating",
    y = "Number of Movies"
  ) +
  theme_minimal()


# ============================================================
# QUESTION 2
# PIE CHART SHOWING GENRE DISTRIBUTION
# ============================================================

genre_count <- table(movie_data$Genre)

pie(
  genre_count,
  labels = paste(
    names(genre_count),
    genre_count,
    sep = " - "
  ),
  main = "Movie Genre Distribution",
  col = c("skyblue", "orange", "lightgreen")
)


# ============================================================
# QUESTION 3
# BAR CHART OF AVERAGE RATINGS BY GENRE
# ============================================================

average_rating <- aggregate(
  Rating ~ Genre,
  data = movie_data,
  FUN = mean
)

print(average_rating)


ggplot(
  average_rating,
  aes(
    x = Genre,
    y = Rating,
    fill = Genre
  )
) +
  geom_bar(
    stat = "identity",
    color = "black"
  ) +
  labs(
    title = "Average Movie Rating by Genre",
    x = "Genre",
    y = "Average Rating"
  ) +
  theme_minimal() +
  theme(
    legend.position = "none"
  )


# ============================================================
# QUESTION 4
# SCATTER PLOT OF DURATION VS RATING
# ============================================================

ggplot(
  movie_data,
  aes(
    x = Duration,
    y = Rating
  )
) +
  geom_point(
    size = 4
  ) +
  labs(
    title = "Movie Duration vs Rating",
    x = "Duration (Minutes)",
    y = "Rating"
  ) +
  theme_minimal()