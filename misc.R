choose(45, 5)*choose(45,1)

# https://stackoverflow.com/questions/5948604/variable-width-bars-in-ggplot2-barplot-in-r

barheights <- data.frame(height = c(2,4,3), width = width=c(2,2,1))
barplot(barheights, width=c(2,2,1))

bartest <- data.frame(cat = c("A", "B", "C"), height = c(2,4,3), width = c(2/5,2/5,1/5))

library(ggplot2)

ggplot(bartest, aes(x=cat, y=height, width=width)) + 
  geom_bar(stat="identity", position="identity", fill = "red")



DATA <- read.csv("Projects/powerballtest.csv")
str(DATA)

# separate()

NUMBERS <- strsplit(as.character(DATA$Winning.Numbers), " ")
NUMS <- do.call(rbind.data.frame, NUMBERS)
colnames(NUMS) <- c("white1", "white2", "white3", "white4", "white5", "powerball")
str(NUMS)


excelfile <- "Projects/powerball.xlsx"
require(readxl)
DATA4 <- read_excel(excelfile, sheet=4)

ANT <- read.csv("https://raw.githubusercontent.com/STAT-JET-ASU/Datafiles/master/Instructor/anthropometric.csv")
table(ANT$gender)
require(ggplot2)


model <- lm(armspan ~ height, data=ANT)
summary(model)


require(dplyr)
require(ggplot2)
ANTM <- ANT %>% filter(gender=="female")
ggplot(ANTM, aes(x = height, y = armspan)) +
  geom_point() +
  geom_abline(intercept = 0, slope = 1)

ANT2 <- ANT %>% filter(gender=="male"|gender=="female")
ggplot(ANT2) +
  geom_density(aes(x = height, fill="pink")) +
  geom_density(aes(x = ideal))

mean_ht <- data.frame(gender = c("female", "male"), mean = c(65, 70))

require(ggplot2)               
ggplot(ANT2, aes(x = height, y = ideal, col = gender)) +
  geom_point() +
  geom_abline(intercept=0, slope=1) +
  facet_grid(gender ~ .) +
  geom_vline(aes(xintercept = mean), mean_ht)

require(ggplot2)               
ggplot(ANT2, aes(x = height, y = ideal, col = gender)) +
  geom_smooth(method=loess)

require(ggplot2)               
ggplot(ANT2, aes(x = height, y = ideal, col = gender)) +
  geom_smooth(method = lm) +
  scale_color_manual(values = c("red", "blue"))


x <- 1:10
RESULTS <- numeric(10)


for (i in 1:10){
  RESULTS[i] <- prod(x[1:i])
  }
RESULTS


multiplier <- numeric(32)
for (i in 1:32){
  multiplier[i] <- prod(DATA4$inflation2[1:i])
}

multiplier


# https://stackoverflow.com/questions/14591167/variable-width-bar-plot



data <- read.csv("Projects/inflation.csv")

n <- length(data$year)

data$inflationplus1[n] <- 1

data$inflfact <- numeric(n)

for (i in 1:n){
  data$inflfact[i] <- prod(data$inflationplus1[i:n])
}

data$inflfact 


























