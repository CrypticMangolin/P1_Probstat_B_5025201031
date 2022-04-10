# No5
b = 3

# 5a.
dexp(b)

# 5b.
set.seed(1)
hist(rexp(10, b), main = 'Distribusi Eksponensial 10 Data')
hist(rexp(100, b), main = 'Distribusi Eksponensial 100 Data')
hist(rexp(1000, b), main = 'Distribusi Eksponensial 1000 Data')
hist(rexp(10000, b), main = 'Distribusi Eksponensial 10000 Data')

# 5c 
# Mean 
mu = b
mu

# Variance
sigma.sq = b^2
sigma.sq 
