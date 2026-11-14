rm(list = ls())

# A sample of 12 students from a school has the following scores
# in an I.Q. test. 89 87 76 78 79 86 74 83 75 71 76 92. Do this
# data support that the mean I.Q. mark of the school students is
# 80? Test at 5% level.

# 1 sample T Test

data <- c(89, 87, 76, 78, 79, 86, 74, 83, 75, 71, 76, 92)

# Null Hypothesis: H0 : Mu = 80 at 5% LOS

alpha <- 0.05
mu <- 80
df <- 11 #(n-1)

t_stat <- t.test(data, mu=mu, conf.level = 1-alpha, alternative = "two.sided")
t_stat

lower <- qt(alpha/2, df)
upper <- qt(1-alpha/2,df)
lower
upper

t_value <- t_stat$statistic
p_value <- t_stat$p.value

if (t_value < lower || t_value > upper && p_value < aplha) {
  print("Reject H0")
} else {
  print("Fail to Reject H0")
}
