rm(list=ls())

# The average and variance of daily expenditure of office
# going women is known as Rs.30 and Rs.10 respectively. A
# sample of 10 office going women is selected whose daily
# expenditure is obtained as 35 33 40 30 25 28 35 28 35 40. Test
# whether the variance of the daily expenditure of office going
# women is 10 at 1% level of significance.

x <- c(35, 33, 40, 30, 25, 28, 35, 28, 35, 40)

# Null Hypothesis: H0: σ^2 = 10
# Alternative Hypothesis: H1: σ^2 ≠ 10

# Two tailed Chi-square test statistic as we have to find the variance of the sample and compare it with the population variance.
alpha <- 0.01/2

mu <- 30
sigma2 <- 10
df <- length(x)

chi_square <- sum((x-mu)^2)/sigma2 

lower_critical_value <- qchisq(alpha, df)
upper_critical_value <- qchisq(1-alpha, df)

if (chi_square < lower_critical_value || chi_square > upper_critical_value) {
    print("Reject the null hypothesis. The variance of daily expenditure of office going women is not equal to 10.")
} else {
    print("Fail to reject the null hypothesis. The variance of daily expenditure of office going women is equal to 10.")
}