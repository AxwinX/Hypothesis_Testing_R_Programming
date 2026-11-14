rm(list = ls())

# A sample of 50 children observed from rural areas of a
# district has an average birth weight of 2.85 kg. The past record
# shows that the standard deviation of birth weight in the district
# is 0.3 kg. Can we expect that the average birth weight of the
# children in the district will be more than 3 kg at 5% level?


# 1 sample Z Test for Population Mean (with Population Standard Deviation Given)
n <- 50
x_bar <- 2.85
mu <- 3
sd <- 0.3

alpha <- 0.05

z_stat <- (x_bar - mu) / (sd / sqrt(n))

upper <- qnorm(1 - alpha)

if (z_stat > upper) {
  print("Reject H0")
} else {
  print("Failed to Reject H0")
}