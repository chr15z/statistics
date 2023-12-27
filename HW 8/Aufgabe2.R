# a) Create a histogram to visualize the data. Are the data approximately bell-shaped?
# Mark the null hypothesis, the mean and the standard error of the mean (i.e., mean ∓ one standard error of the mean). 
# Add labels and legends

load(file = "dist.RData")
hist(distanz,ylab = "Distanz")
mean_value <- mean(distanz)
se_value <- sd(distanz) / sqrt(length(distanz))
null_hypothesis <- 550  
abline(v = mean_value, col = "red", lty = 2, lwd = 2)
abline(v = null_hypothesis, col = "blue", lty = 2, lwd = 2)
abline(v = c(mean_value - se_value, mean_value + se_value), col = "green", lty = 2, lwd = 2, label = "Mean ± SE")
legend("topright", legend = c("Mean", "Null Hypothesis", "Mean ± SE"),
       col = c("red", "blue", "green"), lty = 2, lwd = 2)

#b) Calculate the t-statistic (without using t.test())

H_0 = 550
n = 50
S = sd(distanz)
t = (mean_sample - H_0)/(S / sqrt(n))
print(t) # t = 1.481684

#c) Calculate the p-value (without t.test()). Do you reject the null hypothesis?
alpha = 0.05
p = pt(-t, df=n - 1) * 2 #cdf with n-1 degree of freedom and times two because of the two sided test
# p = 0.1448271 > alpha = 0.05 => no rejection of H0

#d) 
# the data is approximately bell-shaped, it suggests that the data may follow a normal distribution
# The t-statistic of 1.481684 suggests that the mean of the sample is 1.481684 standard errors away 
# from the mean assumed by the null hypothesis.

# The p-value of 0.1448271 is greater than the significance level of 0.05. 
# Therefore, we do not have enough evidence to reject the null hypothesis.

# In practical terms, this means that there is not sufficient evidence to conclude that the sample mean
# is significantly different from the assumed population mean of 550

#e)
t.test(distanz, y = NULL, alternative = "two.sided", mu = 550, var.equal = F, paired = F, conf.level = 0.95)
# y = NULL: nur ein sample