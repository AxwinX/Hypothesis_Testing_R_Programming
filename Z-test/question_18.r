rm(list = ls())

# Random samples of 300 male and 400 female students
# were asked whether they like to introduce CBCS system in
# their university. 160 male and 230 female were in favor of the
# proposal. Test the hypothesis that proportions of male and
# female in favor of the proposal are equal or not at 2% level.

# Two Sample Z Test

n1 <- 300
x1 <- 160
n2 <- 400
x2 <- 230

p1 <- x1/n1
p2 <- x2/n2

alpha <- 0.02

# H0: P1 = P2
# H1: P1 != P2

p <- (x1 + x2) / (n1 + n2)
q <- 1 - p

zresults <- (p1 - p2) / sqrt(p * q * ((1 / n1) + (1 / n2)))

lower <- qnorm(alpha / 2)
upper <- qnorm(1 - alpha / 2)

if (zresults < lower || zresults > upper ) {
  print("Reject H0")
} else {
  print("Failed to Reject H0")
}