rm(list = ls())

# A coaching centre for giving coach to civil service examination
# claims that there will be a significant
# improvement in obtaining scores to the students. A random sample
# of 12 students was selected.
# They are conducted examinations, before and after the coach, and
# are given below. Test whether
# the claim of the coaching centre at 1% level of significance.
# Score Before Coaching : 68 72 74 67 79 78 82 78 77 77 80 78
# Score After Coaching : 78 75 78 80 80 85 80 75 90 92 95 90

# Paired T-Test 
# H0 : M = 0
# H1 : M > 0

b_score <- c(68, 72, 74, 67, 79, 78, 82, 78, 77, 77, 80, 78)
a_score <- c(78, 75, 78, 80, 80, 85, 80, 75, 90, 92, 95, 90)

alpha <- 0.01
df <- 11

d <- a_score - b_score

result <- t.test(a_score, b_score, paired = TRUE, alternative = "greater", conf.level = 1 - alpha)

upper <- qt(1 - alpha, df)

if (result$statistic > upper && result$p.value < alpha) {
  print("Reject H0")
} else {
  print("Failed to Reject H0")
}