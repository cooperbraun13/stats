# Math 321 - Lab 2
# Cooper Braun, James Bruyere

# A1
library(openintro)
survey <- acs12
View(survey)

summary(survey$employment)

# A2
table(survey$gender, survey$employment)
prop.table(table(survey$gender, survey$employment))
addmargins(table(survey$gender, survey$employment))
addmargins(prop.table(table(survey$gender, survey$employment)))
prop.table(addmargins(table(survey$gender, survey$employment)))

# A4
addmargins(table(survey$gender, surver$citizen))

# A5
addmargins(table(survey$race, surver$citizen))