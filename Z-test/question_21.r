rm(list = ls())

# A bulb manufacturing company hypothesizes that the
# average life of its product is 1,450 hours. They know that the
# standard deviation of bulbs life is 210 hours. From a sample of
# 100 bulbs, the company finds the sample mean of 1,390 hours.
# At a 1% level of significance, should the company conclude
# that the average life of the bulbs is less than the hypothesized
# 1,450 hours?

mu <- 1450
sd <- 210
n <- 100
x_bar <- 1390

alpha <- 0.01

# One Sample Z-Test with SD Known
# H0: M = 1450
# H1: M < 1450

z_value <- (x_bar - mu) / (sd / sqrt(n))

lower <- qnorm(alpha)

if (z_value < lower) {
  print("Reject H0")
} else {
  print("Failed to Reject H0")
}