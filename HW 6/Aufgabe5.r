# Aufgabe 5 

# Illustrating the Central Limit Theorem for a random sample from exp(1)-distribution

# Loop over different sample sizes
for (n in c(1, 2, 3, 5, 10, 25, 50, 100, 250, 500, 1000, 2000)) {
  
  # Initialize vector to store results, and set distribution parameters
  result <- c()
  mu <- 1
  sigma <- 1
  
  # Generate 5000 samples for each sample size
  for (i in 1:5000) {
    # Generate a random sample X (n numbers) from exp(1) distribution
    X <- rexp(n, 1/mu)
    
    # Calculate standardized mean and store in the result vector
    result[i] <- (mean(X) - mu) / sigma * sqrt(n)
  }
  
  # Calculate histogram of standardized sample means (not plotted)
  hist <- hist(result, breaks = seq(min(result) - 1, max(result) + 1, by = 0.25), plot = FALSE) # breaks = interval , not plotted = nur erstellen, nicht anzeigen
  
  # Set y-axis limits for proper scaling
  ylim <- range(hist$density, dnorm(0))
  
  # Plot histogram with probability density and overlay standard normal distribution
  hist(result, breaks = seq(min(result) - 1, max(result) + 1, by = 0.25), prob = TRUE, ylim = ylim, 
       main = paste("n=", n), col = "lightblue")
  
  # Overlay standard normal distribution curve
  x <- seq(-4, 4, by = 0.1)
  lines(x, dnorm(x), lty = 1, lwd = 2, col = "lightpink")
  
  # Introduce a pause for visualization
  Sys.sleep(1.5)
}

#the distribution of the sum or mean of many independent, identically distributed random variables,
#even if the original distribution is not normal (int this case exponential distributed), 
#becomes very similar to a normal distributionif the sample size is large enough
