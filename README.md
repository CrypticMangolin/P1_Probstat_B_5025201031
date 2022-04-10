# P1_Probstat_B_5025201031
 Hidayatullah  5025201031 

## Soal 1
### 1a.
Menggunakan `dgeom` untuk menghitung peluang 3 kali gagal sebelum sukses. 
``` R
x = 3
p = 0.2
dgeom(x, p)
# [1] 0.1024
```

### 1b.
Generate distribusi geometri dengan 10000 data menggunakan `rgeom`. Dicari yang `x = 3` dan di-pass ke fungsi `mean`.
``` R
x = 3
p = 0.2
n = 10000
mean(rgeom(n, p) == x)
# [1] 0.1043
```

### 1c.
Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

Hasil tidak beda jauh. 

Namun karena hasil dari poin b menggunakan fungsi random sehingga tidak stabil serta dapat dipengaruhi oleh n

### 1d.
Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

![HistGeo](https://user-images.githubusercontent.com/80145586/162627565-7255e71c-2fc6-4e21-97d1-4e881e01b2fe.png)

### 1e.
Mean dan Varian dapat dihitung menggunakan 

![MV Geo](https://user-images.githubusercontent.com/80145586/162627557-8226e360-20b3-4ba1-af3f-103736787e57.png)

Atau dengan mensimulasikan distribusi geometrik dan menghitung mean dan varians menggunakan fungsi dari R.
```R
n = 10000
p = 0.2
data = rgeom(n, 0.2)
# Mean
mu = 1/p
# [1] 5

mean(data)
# [1] 4.0028

# Variance
q = 1-p
sigma.sq = q/(p*p)
# [1] 20

var(data)
# [1] 20.04592
```

## Soal 2
### 2a.
Menggunakan `dbinom` untuk menghitung peluang 4 pasien sembuh
```R
n <- 20
x <- 4
p <- 0.2
dbinom(x, n, p)
# [1] 0.2181994
```

### 2b.
![HistBinom](https://user-images.githubusercontent.com/80145586/162627795-22adcdd5-821d-4c4a-a90e-2fc0d947d13e.png)

### 2c.
Mean (μ) dan Varian (σ²) dari Distribusi Binomial bisa dihitung menggunakan

μ = np and σ² = npq dengan q = 1-p.

Atau dengan mensimulasikan distribusi binomial dan menghitung mean dan varians menggunakan fungsi dari R.
```R
n <- 20
x <- 4
p <- 0.2
data <- rbinom(10000,size=20,prob=.2)

# Mean
mu = n*p
# [1] 4

mean(data)
# [1] 4.0021

# Variance
q = 1-p
sigma.sq = n*p*q
# [1] 3.2

var(data)
# [1] 3.172213
```

## Soal 3
### 3a.
Menggunakan `dpois` untuk menghitung peluang 6 bayi lahir besok dari rata-rata 4.5 per hari. 
``` R
lambda = 4.5
x = 6
dpois(x, lambda)
# [1] 0.1281201
```

### 3b.
Histogram Simulasi Distribusi Jumlah Bayi selama 365 Hari. 

![HistPois](https://user-images.githubusercontent.com/80145586/162628084-9052098e-b120-4ddc-9ebd-9cf8c3e0230f.png)

Peluang 6 bayi lahir dalam satu hari didapat dari.
```R
set.seed(0)
lambda = 4.5
x = 6
n = 365
data = rpois(n, lambda)
hist(data, main = "Histogram Jumlah Bayi per Hari dalam 365 Hari",
     xlab = "Jumlah bayi")

mean(data == x)
# [1] 0.1232877
```
### 3c.
Hasil simulasi tidak berbeda jauh dari ekspektasi.
Dalam kasus ini didapat perbedaan kurang dari 4%

## Soal 4
### 4a.
Fungsi Probabilitas dari distribusi Chi-Square

![Chi-Square Probability Function](https://user-images.githubusercontent.com/80145586/162627051-9e0db1bc-76b8-4951-b9ad-21ad2c0af17b.png)

### 4b.
Histogram simulasi distribusi Chi-Square untuk 100 data

![HistChi](https://user-images.githubusercontent.com/80145586/162628314-208abe27-4eb4-47a6-9e3d-420e3f966660.png)

### 4c.
Mean dan varians dari Distribusi Chi-Square dapat dihitung dengan cara berikut

μ = v dan σ2 = 2 * v.
```R
dof = 10
n = 100
data = rchisq(n, dof)

# Mean
mu = dof
# [1] 10

mean(data)
# [1] 10.0702

# Variance
sigma.sq = 2*dof
# [1] 20

var(data)
# [1] 25.04592
```

## Soal 5
### 5a.
Fungsi Probabilitas dari distribusi Exponensial

![Exponential Probability Function](https://user-images.githubusercontent.com/80145586/162627054-5b1e5764-3967-48a3-9c23-dba7ca327297.png)

### 5b.
Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
![A](https://user-images.githubusercontent.com/80145586/162628545-9019a5ab-04a7-4cb1-b5fa-a07c09cf8e66.png)
![B](https://user-images.githubusercontent.com/80145586/162628544-2cdf3bde-70b8-426c-a694-5cea2c9dd243.png)
![C](https://user-images.githubusercontent.com/80145586/162628542-983a46b0-58ce-4e64-b8ea-d00128699488.png)
![D](https://user-images.githubusercontent.com/80145586/162628539-c4fb7eed-4815-4416-b848-099a9cf4d61d.png)

### 5c.
Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
```R
b = 3
data = rexp(100, b)

mean(data)
# [1] 0.3435588

var(data)
# [1] 0.0974443
```


## Soal 6
### 6a.
```R
n = 100
mean = 50
sd = 8

x = rnorm(n, mean, sd)
z = (x-mean)/sd
plot(z)

rerata = mean(x)
x1 = floor(rerata)
print(rerata)
print(paste('X1 = ', x1))
print(paste('X2 = ', x1+1))
```
![Plot](https://user-images.githubusercontent.com/80145586/162628848-9b29ae48-e6a2-4d13-92e1-8ed5ed243006.png)

### 6b.
![HistDN](https://user-images.githubusercontent.com/80145586/162628869-2daca895-b700-4192-8def-84fd6e17be18.png)

### 6c.
```R
n = 100
mean = 50
sd = 8

x = rnorm(n, mean, sd)
sigma.sq = var(x)
# [1] 59.20438
```
