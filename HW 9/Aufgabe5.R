# Simulate the distribution of the p-value in the two-sided two-sample t-test: Let X1, . . . , X20,
# Y1, . . . , Y20 be independent random variables with Xi ∼ N(0, 1) and Yi ∼ N(d, 1) for all
# i = 1, 2, . . . , 20. For each d ∈ {0, 0.25, 0.5}, derive p-values in 10000 simulations (H0 : d = 0)
# and plot them in a histogram of unit area. Comment on your three histograms



create_plot <- function(d, col) {
  pvalues <- c()
  for (i in 1:10000){
    x <- rnorm(20,0,1)
    y <- rnorm(20,d,1)
    pvalues <- c(pvalues, t.test(x, y)$p.value)
  }
  hist(pvalues, 
       ylab="Density", 
       xlab="p-value", 
       main = sprintf("Distribution (d=%.2f)", d),
       col=col,
       prob=FALSE)
}

(par(mfrow=c(3,1)))
col = rainbow(3, alpha = 0.3)
create_plot(0, col[1])
create_plot(0.25, col[2])
create_plot(0.5, col[3])