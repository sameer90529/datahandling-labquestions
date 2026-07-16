scores <-c(4, 5,3,4,5)
count <-table(scores)
pie(count,
    main="customer score counting",
    labels=names(count))