age_group <- c("20-29","30-39","30-39","20-29","40-49")
score <-c(4,3,5,4,5)

data <- table(age_group,score)

barplot(data,
        col=c("blue","pink","black"),
        xlab="the age groups",
        ylab="the scores",
        main="scores according to the age",
        legend=rownames(data))