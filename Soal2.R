# No2 X~B(20,0.2)
n <- 20
x <- 4
p <- 0.2

# 2a. X adalah jumlah orang yang sembuh
dbinom(x, n, p)
# [1] 0.2181994

# 2b. Histogram 2a
data <- rbinom(10000,size=20,prob=.2)
hist(data, xlab='Jumlah Pasien Sembuh')

# No 2c
# Mean
mu = n*p
mu
# [1] 4

mean(data)
# [1] 4.0021

# Variance
q = 1-p
sigma.sq = n*p*q
sigma.sq
# [1] 3.2

var(data)
# [1] 3.172213
