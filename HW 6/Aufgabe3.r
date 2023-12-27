# Aufgabe 3

data("trees")

# (a) Make the frequency table of the height of black cherry trees
height_freq_table <- table(trees$Height)      # Frequenzytable of height
print(height_freq_table)

# (b) Compute the sample means and the sample variances for both vectors
mean_height <- mean(trees$Height)
mean_volume <- mean(trees$Volume)

var_height <- var(trees$Height)
var_volume <- var(trees$Volume)

print(paste("mean-height: ", mean_height))
print(paste("mean-volume: ", mean_volume))

print(paste("var-height: ", var_height))
print(paste("var-volume: ", var_volume))

# (c) Compute the covariance and the correlation of these two vectors. Use qqplot to produce quantile-quantile plot of the two datasets

covariance <- cov(trees$Height, trees$Volume)
correlation <- cor(trees$Height, trees$Volume)
# compares the quantile values of the two variables. If the points on the QQ plot are close to a straight line, this indicates that the two variables follow a similar distribution
qqplot(trees$Height, trees$Volume, main = "Quantile-Quantile Plot", xlab = "Height", ylab = "Volume")

# (d) Explain the outputs of the commands fivenum and summary.

# Assuming 'data_vector' is the dataset

print(fivenum(trees$Height)) # min, first-quantile, median, third-quantile, max | vector
print(summary(trees$Height)) # summary of the statistical properties of a dataset | table
