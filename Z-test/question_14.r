rm(list = ls())

# A Film producer knows that his movies ran an average of
# 100 days in each cities of Tamilnadu, and the corresponding
# standard deviation was 8 days. A researcher randomly chose 80
# theatres in southern districts and found that they ran the movie
# an average of 86 days. Test the hypotheses at 2% significance
# level.

# One Sample Z test for Population MEAN ( with known Population SD)

n <- 80
mu <- 100
sd <- 8
x_bar <- 86

alpha <- 0.02

z_stat <- (x_bar - mu) / (sd / sqrt(n))

lower <- qnorm(alpha / 2)
upper <- qnorm(1 - alpha / 2)

if (z_stat < lower || z_stat > upper) {
  print("Reject H0")
} else {
  print("Failed to Reject H0")
}