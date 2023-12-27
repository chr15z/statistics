# Assume the corneal thicknesses are normally distributed with expectation µ1 and variance σ²1
# for eyes affected by glaucoma, and expectation µ2 and variance σ²2
# for eyes not affected by
# glaucoma. Test H0 : µ1 = µ2 against HA : µ1 < µ2 using α = 10%. What kind of test will you
# perform? Base your conclusion on a 90% confidence interval.

glaucoma <- c(488, 478, 480, 426, 440, 410, 458, 460, 468)
notglaucoma <- c(484, 478, 492, 444, 436, 398, 464, 476, 420)
alpha <- 0.1
sd1 <- sd(glaucoma)
sd2 <- sd(notglaucoma)
mean1 <- mean(glaucoma)
mean2 <- mean(notglaucoma)
n <- 9

# test statistic for a one-tailed t-test

t <- (mean1 - mean2) / sqrt((sd1 * sd1 / n) + (sd2 * sd2 / n))
t

result <- t.test(glaucoma, notglaucoma, alternative = "less", conf.level = 0.9)
result

# Make a conclusion based on the p-value
if (result$p.value < 0.1) {
  cat("Reject the null hypothesis. There is evidence that mean1 is less than mean2.\n")
} else {
  cat("Fail to reject the null hypothesis. There is not enough evidence to suggest that mean1 is less than mean2.\n")
}