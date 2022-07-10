# getwd()
# setwd("Users/pwhite/etc)

movies <- read.csv("Movie Ratings.csv")

colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")

# head(movies)
# tail(movies)
# str(movies)
# summary(movies)

movies$Year = factor(movies$Year)

summary(movies)
str(movies)

library(ggplot2)
u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             colour=Genre))

# one smoothed alternative (not ideal for this example)
u + geom_point() + geom_smooth()

#smoothed with no bands showing
u + geom_point() + geom_smooth(fill=NA)