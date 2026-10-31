rm(list=ls())
# ====================================================================
# 4.The gain in weight of two random samples of chicks on two,
# different diets A and B are given below. Examine whether the,
# difference in mean increases in weight is significant.
# Diet A: 2.5 2.25 2.35 2.60 2.10 2.45 2.5 2.1 2.2
# Diet B: 2.45 2.50 2.60 2.77 2.60 2.55 2.65 2.75 2.45 2.50
# ====================================================================

# 2 Sample T - Test as we are required to compare the means of two independent samples. # nolint

diet_A <- c(2.5, 2.25, 2.35, 2.60, 2.10, 2.45, 2.5, 2.1, 2.2)
diet_B <- c(2.45, 2.50, 2.60, 2.77, 2.60, 2.55, 2.65, 2.75, 2.45, 2.50)

# Perform the two-sample t-test
t_test_result <- t.test(diet_A, diet_B, alternative = "two.sided", var.equal = TRUE)

# The null hypothesis (H0) is that there is no difference in the mean weight gain between the two diets, while the alternative hypothesis (H1) is that diet B leads to a greater mean weight gain than diet A.

t_value <- t_test_result$statistic
df <- t_test_result$parameter

lower <- qt(0.025, df) #two sided test lower bound
upper <- qt(0.975, df) #two sided test upper bound


if ((t_value < lower || t_value > upper) && t_test_result$p.value < 0.05) {
  cat("Reject the null hypothesis: There is a significant difference in mean weight gain between Diet A and Diet B.\n")
} else {
  cat("Fail to reject the null hypothesis: There is no significant difference in mean weight gain between Diet A and Diet B.\n")
}

