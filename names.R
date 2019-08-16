library(gender)
gender("Leslie")

name <- "Dakota"

startyear <- 1912
endyear   <- 2012

dataset <- gender(name, years = startyear)

for (i in (startyear + 1):endyear) {
 newdata <- gender(name, years = i)
 dataset <- rbind(dataset, newdata)
}

library(ggplot2)
ggplot(dataset) +
  geom_line(aes(x = year_min, y = proportion_male), color = "blue") +
  geom_line(aes(x = year_min, y = proportion_female), color = "red")  