rm(list = ls())

# The average breaking strength of steel rods is specified as
# 22.25 kg. To test this, a sample of 20 rods was examined. The
# mean and standard deviations obtained were 21.35 kg and 2.25
# respectively. Is the result of the experiment significant at 5%
# level?

n <- 20
x_bar <- 21.35
sd <- 2.25
mu <- 22.25

alpha <- 0.05
df <- n-1

# 1 Sample T Test with Sample SD known

t_stat <- (x_bar - mu) / (sd / sqrt(n))
t_stat

lower <- qt(alpha/2, df)
upper <- qt(1-alpha/2, df)
lower
upper

if (t_stat < lower || t_stat > upper) {
    print("Reject H0")
} else {
    print("Failed to Reject H0")
}
