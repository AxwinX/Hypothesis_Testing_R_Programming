rm(list = ls())

# A sales person says that the average sales of pickle in a
# week will be 120 numbers. A sample of sales on 10 weeks
# observed as 112 124 110 114 108 114 115 118 125 126.
# Examine whether the claim of the salesman is true at 1%
# significance level.

# One Sample T-Test
# H0 : M = 120

mu <- 120
n <- 10
x <- c(112, 124, 110, 114, 108, 114, 115, 118, 125, 126)

alpha <- 0.01
df <- n - 1

result <- t.test(x, mu = mu, alternative = "two.sided", conf.level = 1 - alpha)

lower <- qt(alpha / 2, df)
upper <- qt(1 - alpha / 2, df)

if ((result$statistic < lower || result$statistic > upper) && result$p.value < alpha) {
  print("Reject H0")
} else {
  print("Failed to Reject H0")
}