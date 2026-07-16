# User Interaction Data
likes <- c(200,250,220,270,300)
shares <- c(50,60,55,70,80)
comments <- c(30,40,35,45,50)

interaction_data <- rbind(likes, shares, comments)

# Stacked Area Chart
x <- 1:5

plot(x, likes,
     type = "n",
     xlab = "Days",
     ylab = "Interactions",
     main = "Website User Interactions")

polygon(c(x, rev(x)),
        c(rep(0,5), rev(likes)))

polygon(c(x, rev(x)),
        c(likes, rev(likes + shares)))

polygon(c(x, rev(x)),
        c(likes + shares,
          rev(likes + shares + comments)))

legend("topleft",
       legend = c("Likes","Shares","Comments"))