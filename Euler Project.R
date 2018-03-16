rm(list=ls())

#1
y <- 1:1000
x <- union(y[y%%3 == 0], y[y%%5 == 0])
sum(x)-1000

#2
F <- c(1,1)
n <- 2
while (F[n] <4e+6) {
  n <- n+1
  F[n] <- F[n-1] + F[n-2]
}
sum(F[F%%2 == 0])

#3
install.packages('numbers')
library(numbers)
max(primeFactors(600851475143))


#5
mLCM(1:20)

#6
sum(1:100)^2 - sum((1:100)^2)

#7
install.packages('primes')
library(primes)
length(generate_primes(max = 110000)) # guess and checkß
generate_primes(max = 110000)[10001]

#10
sum(as.numeric(generate_primes(max = 2000000)))


#16
install.packages('gmp')
library(gmp)
x <- as.character(2^1000)
sum(as.numeric(unlist(strsplit(x, ""))))
