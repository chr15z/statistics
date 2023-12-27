#Assume that the numbers are from a normal distribution with mean µ and variance σ, both unknown. 
#Use R to obtain a 90% confidence interval for the mean number of calories µ


# Given data
calories <- c(186, 181, 176, 149, 184, 190, 158, 139, 175, 148, 152, 111, 141, 153, 190, 157, 131, 149, 135, 132)

# Calculate the sample mean and standard deviation
sample_mean <- mean(calories)
sample_sd <- sd(calories)

# Calculate the standard error of the mean
se <- sample_sd / sqrt(length(calories))

# Degrees of freedom for t-distribution
df <- length(calories) - 1

# Confidence level
confidence_level <- 0.90

# Calculate the margin of error
margin_of_error <- qt((1 + confidence_level) / 2, df) * se

# Calculate the confidence interval
confidence_interval <- c(sample_mean - margin_of_error, sample_mean + margin_of_error)

# Print the results
cat("Sample Mean:", sample_mean, "\n")
cat("Margin of Error:", margin_of_error, "\n")
cat("90% Confidence Interval:", confidence_interval, "\n")
