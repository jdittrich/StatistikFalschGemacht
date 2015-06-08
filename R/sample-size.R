# We will randomly generate data in groups with normal distributions.
# Group means are identical.
x = rnorm(10, mean = 5, sd = 3)
y = rnorm(10, mean = 5, sd = 3)

ps = c()
ns = 10:99
for (n in 1:90) {
  ps <- c(ps, t.test(x, y)$p.value)
  x <- c(x, rnorm(1, mean = 5, sd = 3))
  y <- c(y, rnorm(1, mean = 5, sd = 3))
}

png('../plots/sample-size.png', 
    width=600, height=400, pointsize=16)
plot(ns, ps, type="l", xlab = "Sample size", ylab = "p value", las = 1, 
     ylim = c(0.01, 0.6))
abline(h = 0.05, lwd = 2, lty = 2)
dev.off()

pdf('../plots/sample-size.pdf', 
    width=4, height=3, pointsize=10)
plot(ns, ps, type="l", xlab = "Sample size", ylab = "p value", las = 1,
     ylim = c(0.01, 0.6))
abline(h = 0.05, lwd = 2, lty = 2)
dev.off()
