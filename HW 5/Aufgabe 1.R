# Function to calculate binomial pmf
binomial_pmf <- function(k, n, p) {
  choose(n, k) * p^k * (1 - p)^(n - k)
}

# Parameters for Bobby
n_bobby <- 12
p_bobby <- 0.85

# Parameters for Eliot
n_eliot <- 12
p_eliot <- 0.78

# Initialize probability of Eliot winning
p_eliot_wins <- 0

# Calculate the probability of Eliot winning (All Possibilities, that Eliot scores more Points than Bobby)
for (k_eliot in 0:n_eliot) {
  for (k_bobby in 0:(k_eliot - 1)) { # makes sure Bobby scores less than Eliot
    # += probability k baskets Eliot and k baskets Bobby
    p_eliot_wins <- p_eliot_wins + binomial_pmf(k_eliot, n_eliot, p_eliot) * binomial_pmf(k_bobby, n_bobby, p_bobby) 
  }
}

# Print the result
cat("Probability that Eliot wins the game:", p_eliot_wins, "\n")
