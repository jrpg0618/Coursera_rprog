x <- 1:4
y <- lapply(x, runif)
a <- array(rnorm(2 * 2 * 10), c(2, 2, 10))
apply(a, c(1, 2), mean)
rowMeans(a, dims = 2)
colMeans(a, dims = 1)

x <- c(rnorm(10), runif(10), rnorm(10, 1))
f<-gl(3,10)
split(x, f)


