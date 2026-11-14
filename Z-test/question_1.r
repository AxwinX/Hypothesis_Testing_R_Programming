rm(list=ls())

# The daily wages of a Factory’s workers are assumed to be
# normally distributed. A random sample of 50 workers has the
# average daily wage of rupees 120. Test whether the average
# daily wages of that factory be regarded as rupees 125 with a
# standard deviation of rupees 20 at 5% level of significance.

# Z Test statistic: Z = (x̄ - μ) / (σ/√n) | with Population Sigma2 known

# Null Hypothesis : H0 : Mu = 125 at 5% LOS with SD = 20

n <- 50
x_bar <- 120
mu <- 125
sd <- 20
alpha <- 0.05


z_statistics <- (x_bar - mu) / (sd / sqrt(n))

lower_critical_value <- qnorm(alpha/2)
upper_critical_value <- qnorm(1-alpha/2)

if (z_statistics < lower_critical_value || z_statistics > upper_critical_value) {
    print(("Reject H0"))
} else {
    print("Failed to Reject H0")
}