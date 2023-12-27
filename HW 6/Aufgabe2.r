# Aufgabe 2 

# load data
data <- get(load("algorithms.Rdata"))

# create boxplot
boxplot(data, main="Algorithm runtime comparison", xlab="Algorithms", ylab="Runtime in seconds", col=c("lightblue", "lightgreen"))

# The first quartile of the times in A was about?
quantile(data$algoA, 0.25)
# 20.05757 

# The interquartile range of the times in B is about trice the interquartile range of A
quantile(data$algoA, 0.75) - quantile(data$algoA, 0.25) # Column "algoA" in the data frame "data"
# 11.85788 
quantile(data$algoB, 0.75) - quantile(data$algoB, 0.25)
# 21.65629 
# -> no

# Is the sample size n = 100?
length(data$algoA)
length(data$algoB)
# yes

# More than half of the running times in B were faster than 3/4 of the running times in A.
x <- quantile(data$algoA, 0.75)
length(data$algoB[data$algoB > x]) / length(data$algoB) # how many runtimes of algorithm B are greater than x / total number 
# no

# At least 50% in A were faster than the 25% slowest in B.
x <- quantile(data$algoB, 0.25)
length(data$algoA[data$algoA > x]) / length(data$algoA) # how many runtimes of algorithm B are greater than x / total number 
# yes