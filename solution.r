# Number 1
cels_to_far_single <- function(cels) {
  far <- cels * 9 / 5 + 32
  return(far)
}

far_to_cels_single <- function(far) {
  cels <- (far - 32) * 5 / 9
  return(cels)
}

temp_cels <- c(21, 22, 23, 24)
temp_far <- c()

for (i in 1:length(temp_cels)) {
  far <- cels_to_far_single(temp_cels[i])
  temp_far <- c(temp_far, far)
}

temp_far

#Number 2

set.seed(123)
ages <- sample(18:35, sample(15:30, 1), replace = TRUE)
ages
min(ages)
max(ages)
#TODO: Freq table
table <- table(ages)
table
barplot(table)
mean(ages)
sd(ages)
q = 0
for (value in ages) {
  if (value >= 21){
    q = q + 1
  }
}
per = q / length(ages) * 100
per

# #Number 3
d_a = 60
d_b = 25
q_a = 1
q_b = 4
price_a = 60
price_b = 49
area_a = (d_a / 2) ** 2 * pi * q_a
area_b = (d_b / 2) ** 2 * pi * q_b
price_per_sqcm_a = price_a / area_a
price_per_sqcm_b = price_b / area_b
price_per_sqcm_a < price_per_sqcm_b

#Number 4

cyclic_vector <- c()
for (i in 1:7) {
  for (j in 1:i) {
    cyclic_vector <- c(cyclic_vector, i)
  }
}

cyclic_vector


# #Number 5

#built-in-function
num = 39
factorial(num)

#cycle
f = 1
for (i in 1:num) {
  f = f * i
}
f

#Number 6

mat = matrix(nrow = 4, ncol = 2, c(3, 4, 2, 3, 90, 85, 88, 92))

total = 0
for (i in 1:dim(mat)[1]) {
  total = total + mat[i,1] * mat[i, 2]
}
total / sum(mat[,1])

#Number 7

basket = matrix(nrow = 4, ncol = 2, c(3, 2, 1, 5, 19.99, 45.50, 20.99, 7.99))
tax_rate = 0.17
s = 0
for (i in 1:dim(basket)[1]) {
  s = s + basket[i, 1] * basket[i, 2]
}
format(round(s, 2), nsmall = 2)
total_tax = s * tax_rate
format(round(total_tax, 2), nsmall = 2)
final = s + total_tax
format(round(final, 2), nsmall=2)
