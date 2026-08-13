# ============================================================
# SET 24 - HOTEL BOOKING ANALYSIS
# ============================================================

# Load ggplot2
library(ggplot2)


# ============================================================
# CREATE DATASET
# ============================================================

hotel_data <- data.frame(
  Booking_ID = c(1, 2, 3, 4, 5),
  Stay_Nights = c(2, 5, 3, 7, 4),
  Guests = c(2, 4, 1, 3, 2),
  Room_Type = c("Standard", "Deluxe", "Standard", "Suite", "Deluxe")
)

# Display dataset
print(hotel_data)


# ============================================================
# QUESTION 1
# HISTOGRAM OF STAY NIGHTS
# ============================================================

ggplot(
  hotel_data,
  aes(x = Stay_Nights)
) +
  geom_histogram(
    binwidth = 1,
    fill = "skyblue",
    color = "black"
  ) +
  labs(
    title = "Distribution of Stay Nights",
    x = "Stay Nights",
    y = "Number of Bookings"
  ) +
  theme_minimal()


# ============================================================
# QUESTION 2
# PIE CHART OF ROOM TYPES
# ============================================================

room_count <- table(hotel_data$Room_Type)

pie(
  room_count,
  labels = paste(
    names(room_count),
    room_count,
    sep = " - "
  ),
  main = "Distribution of Room Types",
  col = c("skyblue", "orange", "lightgreen")
)


# ============================================================
# QUESTION 3
# BAR CHART OF GUESTS PER BOOKING
# ============================================================

ggplot(
  hotel_data,
  aes(
    x = factor(Booking_ID),
    y = Guests
  )
) +
  geom_bar(
    stat = "identity",
    fill = "steelblue",
    color = "black"
  ) +
  labs(
    title = "Guests per Booking",
    x = "Booking ID",
    y = "Number of Guests"
  ) +
  theme_minimal()


# ============================================================
# QUESTION 4
# SCATTER PLOT OF GUESTS VS STAY NIGHTS
# ============================================================

ggplot(
  hotel_data,
  aes(
    x = Guests,
    y = Stay_Nights
  )
) +
  geom_point(
    size = 4
  ) +
  labs(
    title = "Guests vs Stay Nights",
    x = "Number of Guests",
    y = "Stay Nights"
  ) +
  theme_minimal()