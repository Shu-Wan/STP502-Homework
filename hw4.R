set.seed(707)
n = 7
x = runif(n, -5, 5)
psi = function(theta) sum(abs(x - theta))
psi_prime = function(theta) -sum(sign(x - theta))
theta = seq(-5, 5, 0.05)
plot(theta, sapply(theta, psi), type = "l", xlab="theta", ylab="Psi(theta)")
for (i in x) points(x = i, y = psi(i), col="maroon", pch = 16)

plot(theta, sapply(theta, psi_prime), xlab="theta", ylab="Psi'(theta)", cex=0.2, pch = 20)
abline(h = 0, lty = 1)

set.seed(707)
n = 8
x = runif(n, -5, 5)
psi = function(theta) sum(abs(x - theta))
psi_prime = function(theta) -sum(sign(x - theta))
theta = seq(-5, 5, 0.05)
plot(theta, sapply(theta, psi), type = "l", xlab="theta", ylab="Psi(theta)")
for (i in x) points(x = i, y = psi(i), col="maroon", pch = 16)

plot(theta, sapply(theta, psi_prime), xlab="theta", ylab="Psi'(theta)", cex=0.2, pch = 20)
abline(h = 0, lty = 1)
