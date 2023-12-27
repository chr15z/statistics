inverse_pareto <- function(u) {
  return (2 / sqrt(1 - u))
}


random_numbers <- runif(15)


paretos <- inverse_pareto(random_numbers)
print(paretos)
