set.seed(123)
# Problem 1 - Two-sample t-test
# Create two independent samples from the normal distribution. The first sample 
# of size 10 shall be taken from the N(0,1)-distribution. The second sample of 
# size 20 shall be taken from the N(1,1) distribution. Test the null hypothesis
# that the populations means are equal with a (two-sided) two-sample t-test on 
# the 5%-significance level:
n1 <- 10
data1 <- rnorm(n1, 0, 1)
md1 <- mean(data1)
sd1 <- sd(data1)

n2 <- 20
data2 <- rnorm(n2, 1, 1)
md2 <- mean(data2)
sd2 <- sd(data2)

alpha <- 0.05

# Problem 1a)
# Calculate the t-statistic (without t.test())
t <- (md1-md2)/sqrt((sd1^2)/n1 + (sd2^2)/n2)
t

# Problem 1b)
# Compare it to the output of t.test()
t.test(data1, data2)

# Problem 1c)
# Both previous calculate the same t value.
# if the p-value < alpha we reject the null hypothesis