# Exercise a: 
  mean_value <- 188
  sd_value <- 24
  
  # Creating a range of values for x
  x <- seq(100, 300, length = 1000)  #
  
  # Creating pdf
  pdf <- dnorm(x,mean_value, sd_value)
  
  # Displaying pdf 
  plot(x, pdf, type = "l", lwd = 2, col = "blue",
       xlab = "cholesterine in mg/dL", 
       ylab = "probability")

# Exercise b:
  #P(150 <= X <= 170)
  pnorm(170, mean_value, sd_value) - pnorm(150, mean_value, sd_value)
  
# Exercise c:
  #Compute the range of cholesterol levels (Q3 - Q1)
  qnorm(0.75, mean_value, sd_value) - qnorm(0.25, mean_value, sd_value)
  