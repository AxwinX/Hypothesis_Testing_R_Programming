rm(list = ls())

# A sample of 500 persons were selected from a city in
# Tamilnadu, 210 are tea drinkers. Another sample of 300
# persons from a city of Kerala, 160 persons are tea drinkers.
# Test the hypothesis that the tea drinkers in Tamilnadu are less
# than that of Kerala at 10% level.

# Define the samples
n1 <- 500
n2 <- 300
x1 <- 210
x2 <- 160

p1 <- x1 / n1
p2 <- x2 / n2

p_hat <- (x1+x2)/(n1+n2)
q <- 1-p_hat

z <- (p1 - p2) / sqrt(p_hat * q * (1 / n1 + 1 / n2))

# Null hypothesis: H0: p1 = p2 (Tea drinkers in Tamilnadu are equal to that of Kerala)
# Alternative hypothesis: H1: p1 < p2 (Tea drinkers in Tamilnadu are lesser than that of Kerala)

# Calculate the critical value for a one-tailed test at 10% significance level
alpha <- 0.10
z_critical_lower <- qnorm(alpha) #left tail critical value

# Print the results
cat("Z-score:", z, "\n")
cat("Critical value (z_critical_lower):", z_critical_lower, "\n")

# Conclusion
if (z < z_critical_lower) {
  cat("Reject the null hypothesis: Tea drinkers in Tamilnadu are less than that of Kerala.\n")
} else {
  cat("Fail to reject the null hypothesis: No significant difference in tea drinkers between Tamilnadu and Kerala.\n")
}

# Answer: Reject the null hypothesis: Tea drinkers in Tamilnadu are less than that of Kerala.