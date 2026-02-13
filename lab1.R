# Math 321 - Lab 1
# Cooper Braun & James Bruyere

# A1
library(MASS)
View(survey)

# A2
height <- survey$Height
sum(is.na(height))

# A3
heights <- na.omit(height)

# A4
mean(heights)
median(heights)
summary(heights)
fivenum(heights)

# A5
hist(heights)
hist(heights, breaks = 10)

# B1
sample(c(0,1), size = 10, replace = TRUE)

# B2
mean(sample(c(0,1), size = 10, replace = TRUE))

# B3
means10 <- replicate(1000,
                     mean(sample(c(0,1), size = 10, replace = TRUE)))
hist(means10)

means100 <- replicate(1000,
                      mean(sample(c(0,1), size = 100, replace = TRUE)))
hist(means100)

# C1
sample(heights, size = 10)
mean(sample(heights, size = 10))

# C2
height_means <- replicate(1000,
                          mean(sample(heights, size = 10)))
hist(height_means)

# F2
table(survey$Sex)
table(survey$Smoke)

# F3
prop.table(table(survey$Sex))
prop.table(table(survey$Smoke))

# F4
barplot(table(survey$Sex), main = "Sex", xlab = "Category", ylab = "Count")
barplot(table(survey$Smoke), main = "Smoke Amount", xlab = "Category", ylab = "Count")

# F5
table(survey$Sex, survey$Smoke)

prop.table(table(survey$Sex, survey$Smoke), margin = 1)