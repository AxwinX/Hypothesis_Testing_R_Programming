rm(list = ls())

# The diameters of two random samples, each of size 10, of
# bullets produced by two machines have standard deviations
# 0.012 and 0.018. Test the hypothesis that the two machines are
# equally consistent in diameters at 1% level of significance.

n1 <- 10
n2 <- 10

var1 <- 0.012^2
var2 <- 0.018^2

f_test <- var1 / var2

df1 <- n1 - 1
df2 <- n2 - 1

f_critical_lower <- qf(0.005, df1, df2)
f_critical_upper <- qf(0.995, df1, df2)

if (f_test < f_critical_lower || f_test > f_critical_upper) {
    print("Reject the null hypothesis: The two machines are not equally consistent in diameters.")
} else {
    print("Fail to reject the null hypothesis: The two machines are equally consistent in diameters.")
}