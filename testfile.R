excelfile <- "Projects/powerball.xlsx"
require(readxl)
DATA2 <- read_excel(excelfile, sheet=2)

library(tidyr)
library(lubridate)
DATA2 <- separate(DATA2, 1, c("Day", "Date"), sep = "\\s")
str(DATA2)
DATA2$Date <- mdy(DATA2$Date)


DATA1 <- read_excel(excelfile, sheet=1)

str(DATA1)

DATA1$Date <- ymd(DATA1$Date)


data <- c(5, 6, 13, 2, 1)

N <- 3

results1 <- numeric(N)

for (i in 1:N){
index <- sample(5, 2)
results1[i] <- mean(data[index])-mean(data[-index])
}
results1

MM <- data.frame(marriage  = c("Yes", "Yes", "No"),
                 marijuana = c("Yes", "No", "Yes"))

chisq.test(table(MM$marriage, MM$marijuana), correct = FALSE)


table(MM$marriage, sample(MM$marijuana))
