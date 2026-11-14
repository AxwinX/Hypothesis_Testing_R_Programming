rm(list = ls())

# From a random sample of 1000 children selected from rural
# areas of a district in Tamilnadu, it is found that five are
# affected by polio. Another sample of 1500 from urban areas of
# the same district, three of them is affected. Will it be
# reasonable to claim that the proportion of polio affected
# children in rural area is more than urban area at 1% level?

# Two Sample Z Test for Population Propostion

n1 <- 1000
x1 <- 5
n2 <- 1500
x2 <- 3

p1 <- x1 / n1
p2 <- x2 / n2
p_cap <- x1 + x2 / n1 + n2
q_cap <- 1 - p_cap
alpha <- 0.01

# H0 : P1 = P2
# H1 : P1 > P2
z_stat <- (p1 -p2) / sqrt(p_cap * q_cap * ((1 / n1) + (1 / n2)))

upper <- qnorm(1 - alpha)

if (z_stat > upper) {
  print("Reject H0")
} else {
  print("Failed to Reject H0")
}