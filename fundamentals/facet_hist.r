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
u <- ggplot(data=movies, aes(x=BudgetMillions))
u + geom_histogram(binwidth=10,aes(fill=Genre),
                   colour="black")

# facets
u + geom_histogram(binwidth=10,aes(fill=Genre),
                   colour="black") + 
  facet_grid(Genre~., scales="free")





