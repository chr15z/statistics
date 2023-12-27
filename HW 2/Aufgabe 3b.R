library(ggplot2)

# Define the PDF function
pdf_function <- function(y) {
  return(1 / (pi * (1 + y^2)))
}

# Create a range of y values
y_values <- seq(-10, 10, length.out = 1000)

# Calculate the corresponding PDF values
pdf_values <- pdf_function(y_values)

# Create a data frame for plotting
df <- data.frame(y = y_values, f_y = pdf_values)

# Create the plot
ggplot(df, aes(x = y, y = f_y)) +
  geom_line() +
  labs(x = "y", y = "f(y)", title = "Probability Density Function (PDF)") 
# "aes" = "aesthetic mapping" (x and y axis)
# "labs" = Axistitle anddiagram title
