# No2 X~B(20,0.2)
n <- 20
x <- 4
p <- 0.2

# 2a. X adalah jumlah orang yang sembuh
dbinom(x, n, p)
# [1] 0.2181994

# 2b. Histogram 2a
pasien <- 0:20

plot(pasien, dbinom(pasien,size=20,prob=.2),
     type='h',
     main='Binomial Distribution (n=20, p=0.2)',
     ylab='Probability',
     xlab ='# Sembuh',
     lwd=10)

# No 2c
# Mean = n*p
n <- 20
mu = n*p
mu
# [1] 4

# Variance = npq
q = 1-p
sigma.sq = n*p*q
sigma.sq
# [1] 3.2
