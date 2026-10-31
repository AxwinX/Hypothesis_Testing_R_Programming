rm(list = ls())

# 5. Two brand managers were in disagreement over the issue of
# whether urban homemakers had greater variability in grocery
# shopping patterns than did rural homemakers. To test their
# conflicting ideas, they took random samples of 25 homemakers
# from urban areas and 15 homemakers from rural areas. They
# found that the variance for the urban homemaker was 4.25 and
# rural homemaker was 3.5. Is the difference in the variances in
# days between shopping visits significant at 5% level? 

# F test as there are two variances to compare 


# Given data
urban_variance <- 4.25
rural_variance <- 3.5
urban_sample_size <- 25
rural_sample_size <- 15 

f_test <- urban_variance / rural_variance

df1 <- urban_sample_size - 1
df2 <- rural_sample_size - 1

# Calculate the critical value for F distribution at 5% significance level
alpha <- 0.05

lower <- qf(alpha / 2, df1, df2)
upper <- qf(1 - alpha / 2, df1, df2)

# Decision
if (f_test < lower || f_test > upper) {
  print("Reject the null hypothesis")
} else {
  print("Fail to reject the null hypothesis")
}