rm(list = ls())

# A researcher is interested to know whether the average
# performance in a public examination by students of schools
# from Tsunami affected area compared with other students is
# poor or not. A random sample of 10 students from coastal area
# schools is selected whose marks are given below. 68 72 64 65
# 56 72 64 56 60 73. Another sample of 8 students from non-
# coastal area schools has the following marks 76 78 68 72 83 85
# 88 78. Test at 1% level of the hypothesis.

#Two sample Independent T-Test
coastal <- c(68, 72, 64, 65, 56, 72, 64, 56, 60, 73)
noncoastal <- c(76, 78, 68, 72, 83, 85, 88, 78)

alpha <- 0.01

# H0: M1 = M2
# H1: M1 < M2
result <- t.test(coastal, noncoastal, alternative = "less", var.equal = FALSE, conf.level = 0.99)
result

lower <- qt(alpha, df = result$parameter)

if(result$satistic < lower && result$p.value < alpha) {
  print("Coastal students' average performance is significantly lower")
} else {
  print("Insufficient evidence that coastal students perform poorly")
}