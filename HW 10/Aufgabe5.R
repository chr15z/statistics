# Simulate the coverage probability of the one-sample confidence interval for frequencies - does
# the confidence interval deliver what it promises? Let Y1, . . . , Yn be i.i.d. random variables with
# Y1 ∼ bern(p) and p ∈ (0, 1). Approximate in 10000 simulations the coverage probability of the
# 95%-confidence interval, i.e., simulate the proportion of coverage events of the parameter p.
# For that let
# (a) n = 45 and p = 4/9
# (b) n = 10 and p = 1/10
# (c) Visualize the simulated relative frequencies from (a) and (b) in two histograms and comment on the simulated coverage probabilities.
# Hint: R-command rbinom and for example ifelse().


create_plot <- function(n, p, col, main, confidence_level = 0.95) {
  coverage_count <- 0
  hs <- numeric(10000)
  
  for (i in 1:10000){
    samples <- rbinom(n, 1, p) # Bernoulli distribution
    h <- mean(samples)
    se <- sqrt(h * (1 - h) / n)
    z = qnorm(1 - (1 - confidence_level) / 2) * se # qnorm(0.975) * se 
    lower_bound <- h - z # confidence interval 
    upper_bound <- h + z
    coverage_count <- coverage_count + ifelse(p > lower_bound & p < upper_bound, 1, 0) # Check if the true parameter is within the confidence interval
    hs[i] <- h
    }
  coverage_probability <- coverage_count / 10000
  print(coverage_probability)
  
  hist <- hist(hs, 
                 main = main, 
                 xlab = "Sample Mean", 
                 col = col, 
                 freq = FALSE)
  
}

options(repr.plot.width=8, repr.plot.height=6)
(par(mfrow=c(2,1)))
col = rainbow(2, alpha = 0.2)
create_plot(45, 4/9, col[1], "Histogram for (a)")
create_plot(10, 1/10, col[2], "Histogram for (b)")

#if n is small (< 30) or/and p is either close to 0 or 1, the formular will "explode". In these cases there are other tests that you can do