rm(list = ls())

# A manufacturer claims that the lifetime of a certain brand
# of batteries produced by his company has a variance more than
# 6800 hours. A sample of 20 batteries selected from the
# production department of that company has a variance of 5000
# hours. Test the manufacturer’s claim at 5% level.


# Chi-Square Test 

# H0: Sigma2 = 6800
# H1: Sigma2 < 6800
pvar <- 6800
n <- 20
svar <- 5000

alpha <- 0.05

df <- n-1

chiresult <- (n - 1) * svar / pvar

upper <- qchisq(1 - alpha, df)

if (chiresult > upper) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}