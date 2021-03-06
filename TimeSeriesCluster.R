setwd("D:\\RWDir")
sc <- read.table("D:\\RWDir\\RawData\\synthetic_control.txt", header=F, sep=" ")
n <- 10  
s <- sample(1:100, n)
idx <- c(s, 100+s, 200+s, 300+s, 400+s, 500+s)
sample2 <- sc[idx,]
observedLabels <- c(rep(1,n), rep(2,n), rep(3,n), rep(4,n), rep(5,n), rep(6,n))
# compute DTW distances
library(dtw)

distMatrix <- dist(sample2, method="DTW")

# hierarchical clustering
hc <- hclust(distMatrix, method="average")
plot(hc, labels=observedLabels, main="")

