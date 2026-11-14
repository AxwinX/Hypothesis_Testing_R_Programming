rm(list = ls())

# The following data shows the additional hours of sleep
# gained by 15 patients in an experiment to test the effect of a
# drug. Do these data shows the evidence that the drug produces
# additional hours of sleep at 2% level?
# Hours gained : 2.5 3.0 2.25 3.25 1.75 1.5 2.5 2.25 3.0 3.25 3.0 2.5
# 2.75 3.25 3.75.

# One Sample T-Test

x <- c(2.5, 3.0, 2.25, 3.25, 1.75, 1.5, 2.5, 2.25, 3.0, 3.25, 3.0, 2.5, 2.75, 3.25, 3.75)

alpha <- 0.02

results <- t.test(x, alternative = "greater", conf.level = 1 - alpha)

upper <- qt(1 - alpha, df = results$parameter)


if (results$statistic > upper && results$p.value < alpha) {
  print("Reject H0")
} else {
  print("Failed to Reject H0")
}