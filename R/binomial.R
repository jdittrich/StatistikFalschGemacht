x <- seq(0, 100, by = 1)
y <- dbinom(x, 100, 0.5)

png('../plots/binomial.png', 
    width=600, height=400, pointsize=16)
plot(x, y, type = 'h', xlab = "Number of heads", 
     ylab = "Probability", las = 1)
dev.off()

pdf('../plots/binomial.pdf', 
    width=4, height=3, pointsize = 10)
plot(x, y, type = 'h', xlab = "Number of heads", 
     ylab = "Probability", las = 1)
dev.off()
