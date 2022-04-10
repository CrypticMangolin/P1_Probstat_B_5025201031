# No1 
x = 3
p = 0.2

# 1a. 
dgeom(x, p)
# [1] 0.1024

# 1b.
n = 10000
mean(rgeom(n, p) == x)
# [1] 0.1043

# 1c.
E = abs(0.1043-0.1024)/0.1024

# Hasil tidak beda jauh, dibawah 2%
# Namun hasil dari poin b menggunakan fungsi random
# sehingga tidak stabil dan dapat dipengaruhi oleh n

# 1d.
x = rgeom(n, 0.2)
hist(x, main = "Histogram dengan 10000 data")

# 1e.
data = rgeom(n, 0.2)

# Mean
mu = 1/p
mu
# [1] 5

mean(data)
# [1] 4.0028

# Variance
q = 1-p
sigma.sq = q/(p*p)
sigma.sq
# [1] 20

var(data)
# [1] 20.04592
