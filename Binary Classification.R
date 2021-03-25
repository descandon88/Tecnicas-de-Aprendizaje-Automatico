pi= .5 # prior
n =1000 #size of the sample
population <- sample(1:0, n, rep = TRUE,
                     prob = c(pi, 1- pi))
table(population)
n1 <- table(population)["1"]; n2 <- table(population)["0"]
# parameters
mu.1 <- 2.5; sigma.1 <- 1
mu.2 <- 7; sigma.2 <- 2
x1 <- rnorm(n1, mu.1, sigma.1)
x2 <- rnorm(n2, mu.2, sigma.2)
x12 <- c(x1, x2)

mean(x1); mean(x2); mean(x12)
sd(x1); sd(x2); sd(x12)

par(mfrow=c(1,2))
#par(mfrow=c(2,1))

hist(x1, freq = F, ylim=c(0,0.45)); curve(dnorm(x, mean = mu.1, sd = sigma.1), add = T, lwd = 2, col = 'red')
hist(x2, freq = F, ylim=c(0,0.45)); curve(dnorm(x, mean = mu.2, sd = sigma.2), add = T, lwd = 2, col = 'blue')
hist(x12, freq = F, ylim=c(0,0.45))
rug(x1, col = 'red')
rug(x2, col = 'blue')
curve(dnorm(x, mean = mu.1, sd = sigma.1), lty = 3, add = T, col = 'red')
curve(dnorm(x, mean = mu.2, sd = sigma.2), lty = 2, add = T, col = 'blue')


