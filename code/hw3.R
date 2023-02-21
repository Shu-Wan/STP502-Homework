x <- c(22.0, 23.9, 20.9, 23.8, 25.0, 24.0, 21.7, 23.8, 22.8, 23.1, 23.1, 23.5, 23.0, 23.0)
n <- length(x)
l <- function(a) {
  sum(dgamma(x, shape = a, scale = sum(x) / (n * a), log = TRUE))
}
res <- optimize(l, c(100, 1000), maximum = TRUE)

cat("alpha: ", res$maximum)
# alpha:  514.3354
cat("beta: ", sum(x) / (n * res$maximum))
# beta:  0.0449401
