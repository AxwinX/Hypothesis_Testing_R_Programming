rm(list = ls())

# A sample of 10 coconut has the following yield of coconuts
# from a grove in a season are 68 56 47 52 62 70 56 54 63 60.
# Shall we conclude that the average yield of coconuts from the
# grove is 65? Test at 2% level.

# One sample T Test
# H0 : Mu = 65

x <- c(68, 56, 47, 52, 62, 70, 56, 54, 63, 60)
alpha <- 0.02
df <- length(x) -1
mu <- 65

t_stat <- t.test(x, mu=mu, alternative = "two.sided", conf.level = 1-alpha)
t_stat

t_value <- t_stat$statistic
p_value <- t_stat$p_value

lower <- qt(alpha/2,df)
upper <- qt(1-alpha/2,df)
lower
upper

if(t_value < lower || t_value > upper && p_value < alpha) {
  print("Reject H0")
} else {
  print("Failed to Reject H0")
}
