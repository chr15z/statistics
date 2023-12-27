# Problem 2 - Two-sample t-test using normal approximation
# Messages are frequently sent from a sender to either receiver 1 or receiver 2.
# For both receivers, several times for the transfer were measured 
# (in seconds) and stored in the file waitingtimes2.Rdata.

load("waitingtimes2.Rdata")
d1 <- wt[[1]]
d2 <- wt[[2]]
n1 <- length(d1)
n2 <- length(d2)

# Problem 2a)
# Visualize both data sets. Are the distributions approximately bell-shaped?
plot_wait <- function(data, text) {
  hist(data, main=text, xlab="time (sec)", ylab="frequency")
}

(par(mfrow=c(2,1)))
plot_wait(d1, "Data set 1")
plot_wait(d2, "Data set 2")
# The data is not bell-shaped

# Problem 2b)
# Test the null-hypothesis of equal mean transfer times for both receivers on 
# the 1%-level with a two sample t-test (using the normal approximation).
sem1 <- sd(d1)^2/n1
sem2 <- sd(d2)^2/n2
m1 <- mean(d1)
m2 <- mean(d2)
t <- (m1 - m2)/sqrt(sem1+sem2)
t
p <- pnorm(t)*2
p

# Problem 2c)
# Compare your result to the output of t.test()
t.test(d1,d2)
# t.test assumes the t(v)-distribution. we assume the N(0,1)-distribution