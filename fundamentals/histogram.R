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
s + geom_histogram(binwidth=10)

# add colour
s + geom_histogram(binwidth=10,aes(fill=Genre))

# add a border (apprently colour defaults to a border-reference)
s + geom_histogram(binwidth=10,aes(fill=Genre), colour="black")
