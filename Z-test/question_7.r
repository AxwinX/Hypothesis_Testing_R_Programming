rm(list = ls())
# ====================================================================
# A random sample of 400 apples was taken from large
# consignment and 35 were found to be bad.
# Examine whether the bad items in the lot will be 7% at 1% level.
# ====================================================================

# This is a one-sample z-test for proportions. 
# The null hypothesis (H0) is that the proportion of bad apples in the consignment is equal to 7% (p = 0.07), 
# while the alternative hypothesis (H1) is that the proportion of bad apples is not equal to 7% (p ≠ 0.07).
n <- 400
x <- 35
p <- 0.07
alpha <- 0.01

phat <- x/n

z <- (phat-p)/sqrt(p*(1-p)/n)

print(z)

lower <- qnorm(alpha/2)
upper <- qnorm(1-alpha/2)

print(lower)
print(upper)

if (z < lower || z > upper) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}