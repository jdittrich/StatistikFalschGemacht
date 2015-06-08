# Generate simulated school test score data.
# Schools with smaller sizes have more variance in their score data, so
# small schools dominate the highest and lowest test score areas.

sizes = rnorm(1000, 1000, 250)
scores = c()

for (size in sizes) {
  scores <- c(scores, rnorm(1, 1200 + size / 6, 4000/sqrt(size)))
}

png('../plots/school-size.png', 
    width=600, height=400, pointsize=16)
plot(sizes, scores, pch = 20, xlab = "Number of students", 
     ylab = "Average test score", las = 1)
dev.off()

pdf('../plots/school-size.pdf', 
    width=4, height=3, pointsize=10)
plot(sizes, scores, pch = 20, xlab = "Number of students", 
     ylab = "Average test score", las = 1)
dev.off()
