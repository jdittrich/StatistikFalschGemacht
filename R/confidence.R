# generate simple confidence intervals plot

library(Hmisc)

png('../plots/confidence.png', 
    width=450, height=350, pointsize=16)
errbar(c(1,2), c(20, 30), c(15, 23), c(25, 37), las=1,
       ylab="Time to recovery", xlab="Group", xlim=c(0.5,2.5), xaxp=c(1,2,1))
title("Comparing confidence intervals")
dev.off()

pdf('../plots/confidence.pdf', 
    width=3.5, height=3, pointsize = 10)
errbar(c(1,2), c(20, 30), c(15, 23), c(25, 37), las=1,
       ylab="Time to recovery", xlab="Group", xlim=c(0.5,2.5), xaxp=c(1,2,1))
title("Comparing confidence intervals")
dev.off()
