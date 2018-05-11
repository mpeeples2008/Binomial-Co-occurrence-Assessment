binco <- function(x) {

x[x>0] <- 1
nm.p <- colSums(x)/nrow(x)

obs <- t(as.matrix(x)) %*% (as.matrix(x))
diag(obs) <- 0

expect <- matrix(0,nrow(obs),ncol(obs))
for (i in 1:nrow(obs)) {
for (j in 1:ncol(obs)) {
expect[i,j] <- (nm.p[i]*nm.p[j])*nrow(x)}}

p <- expect/nrow(x)

out <- (obs-expect)/sqrt(expect*(1-p))
diag(out) <- 0

return(out)}




