alpha = 0.05 # two-tailed alpha-level
ms    = c(10, 100, 1000) # sample sizes

for (m in ms) {
	# upper bound of rejection region
	r = qbinom(c(1 - (alpha/2)), m, 0.5) - (m/2)
	
	ps = seq(from = 0, to = 1, by = 0.01)
	
	powers = c()
	for (p in ps) {
	  powers <- c(powers, 
	              sum(dbinom(((m/2)+r):m, m, p)) + 
	              sum(dbinom(0:((m/2)-r), m, p)))
	}
	
	pdf(paste('../plots/power-curve-', m, '.pdf', sep=''), 
		width=4, height=3, pointsize=10)
	plot(ps, powers, xlab = "True probability of heads", 
		 ylab = "Power", type='l', las = 1)
	dev.off()
	
	png(paste('../plots/power-curve-', m, '.png', sep=''), 
		width=600, height=400, pointsize=16)
	plot(ps, powers, xlab = "True probability of heads", 
		 ylab = "Power", type='l', las = 1)
	dev.off()
}
