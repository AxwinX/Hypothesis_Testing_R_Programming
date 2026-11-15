rm(list = ls())

# The variation of birth weight (as measured by the variance)
# of children in a region is expected to be more than 0.16. The
# mean of the birth weight is known, which is 2.4 Kg. A sample
# of 11 children is selected, whose birth weight is obtained as
# follows.
# Weight (in Kgs.): 2.7 2.5 2.6 2.6 2.7 2.5 2.5 2.3 2.4 2.3 2.5
# Set up the hypotheses and for testing the expectedness at 5% level
# of significance.

# Chi Square Test with mean known
# H0: Sigma2 = 0.16
# H1: Sigma2 > 0.16

pvar <- 0.16
mu <- 2.4
n <- 11
x <- c(2.7, 2.5, 2.6, 2.6, 2.7, 2.5, 2.5, 2.3, 2.4, 2.3, 2.5)

alpha <- 0.05

chi_value <- sum((x - mu)^2) / pvar
df <- n

upper <- qchisq(1 - alpha, df)

if (chi_value > upper) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}
