data(trees)
head(trees) #shows the first few rows of dataset trees
h <- trees$Height #vector
v <- trees$Volume #vector
#What are the outputs of summary(h) and factor(h)?
table(h)
summary(h)
#Compute Compute the sample means mean() and variances var() for both vectors
mean_h <- mean(h)
mean_v <- mean(v)

print(mean_h)
print(mean_v)
var(h)
var(v)
plot(h,v)