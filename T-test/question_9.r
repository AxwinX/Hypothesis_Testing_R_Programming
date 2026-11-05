rm(list = ls())

# 9.A health spa has advertised a weight-reducing program and has
# claimed that the average participant in the program loses more
# than 5 kgs. A random sample of 10 participants has the
# following weights before and after the program. Test his claim
# at 5% level of significance.
# Weights before: 80 78 75 86 90 87 95 78 86 90
# Weights after: 76 75 70 80 84 83 91 72 83 83

before <- c(80, 78, 75, 86, 90, 87, 95, 78, 86, 90)
after <- c(76, 75, 70, 80, 84, 83, 91, 72, 83, 83)
alpha <- 0.05

d <- before - after
d

result <- t.test(before, after, alternative = "greater", mu = 5, paired = TRUE)
result

t_value <- result$statistic
df <- result$parameter

t_critical_upper <- qt(1 - alpha, df) # right tail critical value

if (t_value > t_critical_upper) {
  print("Reject H0")
} else {
  print("Fail to reject H0")
}

# Answer: Fail to reject H0. There is not enough evidence to support the claim that the average participant in the program loses more than 5 kgs.
