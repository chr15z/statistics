# 5a)

lambda <- 50
lower <- 54
upper <- 62

# Probability of X less than or equal to 62
prob_upper <- ppois(upper, lambda)

# Probability of X less than or equal to 53
prob_lower <- ppois(lower - 1, lambda)  # subtract 1 for inclusive range

# Probability between 54 and 62 (inclusive)
prob_between <- prob_upper - prob_lower

print(prob_between)

# 5b)

# Standardize the values
z_lower <- (lower - 0.5 - lambda) / sqrt(lambda)
z_upper <- (upper + 0.5 - lambda) / sqrt(lambda)

# Use the standard normal distribution to get probabilities
prob_between_normal <- pnorm(z_upper) - pnorm(z_lower)

print(prob_between_normal)
