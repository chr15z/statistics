# Aufgabe 1

k <- 100

x <- rnorm(sample(k:(2*k), 1), runif(1, 0, k), rexp(1, 1/k))
#sample(k:(2*k), 1):  1 random value is selected from the interval [k; 2*k]
#runif(1, 0, k):      1 random uniformly distributed number (uniform distribution) is generated from the interval [0;k)
#rexp(1, 1/k):        1 random number from an exponential distribution with a rate of 1/k (=inverse parameter to the expected value)
                      # if rate parameter large -> variance small (variance (exponential distribution): 1/lambda^2)
#rnorm(number, mean, sd) "number" figures with a mean value "mean" and standard deviation "sd" are generated from a normal distribution

# Plot Histogram
hist(x, col = "grey", main = "Normal distribution of x", xlab = "x", ylab = "Frequency")

# Add mean value and standard deviation
mean_x <- mean(x)
sd_x <- sd(x)
abline(v = mean_x, col = "red", lwd = 2, lty = 2)         #lty = linetype, lwd = linewidth
abline(v = mean_x - sd_x, col = "blue", lwd = 2, lty = 2)
abline(v = mean_x + sd_x, col = "blue", lwd = 2, lty = 2)

# Add legend
legend("topleft", legend = c("Mean value", "Standard deviation"), col = c("red", "blue"), lty = 2, lwd = 2, cex = 0.8)
# cex = size or characterexpension
