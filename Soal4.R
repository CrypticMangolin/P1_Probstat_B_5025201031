# No4
dof = 10
x = 2

# 4a.
dchisq(x, dof)

# 4b.
n = 100
data = rchisq(n, dof)
hist(data, main = "Histogram Chi-Square", xlab ="Critical Value")

# 4c.
# Mean
mu = dof
mu
# [1] 10

mean(data)
# [1] 10.0702

# Variance
sigma.sq = 2*dof
sigma.sq
# [1] 20

var(data)
# [1] 25.04592