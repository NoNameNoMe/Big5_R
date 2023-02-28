d1=read.table("E:\\Desk\\IPIP-FFM-data-8Nov2018\\d1.csv",header=TRUE,sep=",")
library(psych)
r <- corr.test(d1)$r
r=round(r, 2)
KMO(d1)
cortest.bartlett(d1)
fa.parallel(r, n.obs = 5000, fa = "fa", n.iter = 100)
fit <- fa(d1, nfactors=8, rotate="varimax",scores=TRUE,fm="pa") 
fit
fa.diagram(fit, simple=FALSE)