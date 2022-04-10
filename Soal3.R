# No3 X~P(lambda)
lambda = 4.5
x = 6

# 3a
dpois(x, lambda)
# [1] 0.1281201

# 3b
set.seed(0)
n = 365
data = rpois(n, lambda)
hist(data, main = "Histogram Jumlah Bayi per Hari dalam 365 Hari",
     xlab = "Jumlah bayi")

mean(data == 6)
# [1] 0.1232877

# 3c
E = abs(0.1232877-0.1281201)/0.1281201
# Hasil simulasi tidak berbeda jauh dari ekspektasi.
# Namun hasil dari poin b menggunakan fungsi random
# sehingga tidak stabil dan dapat dipengaruhi oleh n
