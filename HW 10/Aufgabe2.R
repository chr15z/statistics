# Anna is one of the candidates in the upcoming ellections for the student representative at the TU Wien. 
# Her team wants to determine whether or not more than 3/4 of all students would vote for her. 
# In a random poll sampling of n = 137 students, the responses x1, x2, . . . , xn were
# collected (each is 1 or 0, if they would vore for her or not). 
# Among them, there were observed 131 ”yes” responses, i.e. Pni=1 xi = 131. 
# Perform a hypothesis test with the level of significance α = 0.01 and state your conclusion based on the information given.

n <- 137
yes_responses <- 131
p <- 3/4
h = 131 / n

# Calculate the standard error of the proportion
se = sqrt((h * (1 - h)) / n)
se

# Calculate the z-score
z = (h - p) / se
z

# Calculate the one-tailed p-value
p_value = pnorm(z)
p_value

p_value > 0.01 # TRUE => H0 not rejected
