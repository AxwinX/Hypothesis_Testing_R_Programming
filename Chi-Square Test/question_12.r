rm(list = ls())

# A psychologist is aware of studies showing that the mean
# and variability (measured as variance) of attention, spans of 5-
# year-olds can be summarized as 80 and 64 minutes
# respectively. She wants to study whether the variability of
# attention span of 6-year-olds is different. A sample of 20 6-
# year olds has the following attention spans in minutes: 86 89
# 84 78 75 74 85 71 84 71 75 68 75 71 82 85 81 78 79 78. State
# explicit null and alternative hypotheses and test at 5% level.

# Chi-square Test for single varience

x <- c(86, 89, 84, 78, 75, 74, 85, 71, 84, 71,
       75, 68, 75, 71, 82, 85, 81, 78, 79, 78)

n <- length(x)
mu <- 80
var <- 64
alpha <- 0.05

s_var <- sum((x - mu)^2 / n - 1)

chi_stat <- ((n - 1) * s_var) / 65

df <- n - 1

lower <- qchisq(alpha / 2, df)
upper <- qchisq(1 - alpha / 2, df)

if (chi_stat < lower || chi_stat > upper) {
  print("Reject H0")
} else {
  print("Failed to Reject H0")
}