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
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

# add geometry (best to start with...)
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + 
  geom_point()

# add color
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                        colour=BudgetMillions)) + 
  geom_point()

# layers - to add more geometry...
p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                             colour=BudgetMillions)) + 
  geom_point()

p + geom_line
p + geom_point


# example of overriding aesthetics (no geom_point in top line):
q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                             colour=BudgetMillions)) + 

q + geom_point()

q + geom_point(aes(size=CriticRating))
q + geom_point(aes(colour=BudgetMillions))

q + geom_point(aes(colour=BudgetMillions)) + 
  xlab("Budget Millions $")

q + geom_line(size=1) + geom_point()
 




















