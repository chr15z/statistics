# You are at a fair and a lottery booth showman claims that every second lottery ticket is a win.
# You observe the hustle and bustle around the lottery booth for a while and count that from 58
# tickets sold 17 won. Does this observation let you doubt the claim?

n_tickets = 58
n_wins = 17
p = 0.5    # Expected proportion under the null hypothesis (assuming every second ticket is a win)
h = n_wins / n_tickets

# a) Calculate the p-value in the context of the (two-sided) one-sample test for proportions.

# Calculate the standard error of the proportion
se = sqrt((h * (1 - h)) / n_tickets)
se

# Calculate the z-score
z = (h - p) / se
z

# Calculate the two-tailed p-value
p_value = 2 * pnorm(z)
p_value

# b) What do you answer the showman?
# LIAR
