rm(list = ls())

# The variation of daily sales in a vegetable mart is reported
# as Rs.100. A sample of 20 day’s was observed with variance as
# Rs.160. Test whether the variance of the sales in the vegetable
# mart be regarded as Rs.100 or not at 1% level of significance.

# Chi-square Test
# H0 : Sigma2 = 100 at 1% LOS
pvar <- 100
svar <- 160
n <- 20

alpha <- 0.01

chiresult <- (n - 1) * svar / pvar

df <- n - 1

lower <- qchisq(alpha/2, df)
upper <- qchisq(1 - alpha/2, df)

if ( chiresult > upper || chiresult < lower) {
  print("Reject H0")
} else {
  print("Failed to Reject H0")
}
  