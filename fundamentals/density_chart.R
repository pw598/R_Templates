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
s <- ggplot(data=movies, aes(x=BudgetMillions))

#density chart
s + geom_density(aes(fill=Genre), position="stack")