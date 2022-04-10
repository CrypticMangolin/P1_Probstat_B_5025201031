# No6
n = 100
mean = 50
sd = 8

# 6a
x = rnorm(n, mean, sd)
z = (x-mean)/sd
plot(z)

rerata = mean(x)
x1 = floor(rerata)
print(rerata)
print(paste('X1 = ', x1))
print(paste('X2 = ', x1+1))

# 6b
hist(x, breaks = 50, main = "5025201031_Hidayatullah_Probstat_B_DNHistogram")

# 6c
# Varians
sigma.sq = var(x)
sigma.sq
# [1] 59.20438

sigma.sq = sd^2
sigma.sq
# [1] 64
