#for (i in seq_along(w)) {
#  + w[i] <- w[i] * 1000
#  + }
#w?

require(EMD)
data(kospi200)
names(kospi200)
plot(kospi200$date, kospi200$index, type="l")

###
### Empirical Mode Decomposition
###
ndata <- 3000
tt2 <- seq(0, 9, length=ndata)
#View(tt2)
xt2 <- sin(pi * tt2) + sin(2* pi * tt2) + sin(6 * pi * tt2) + 0.5 * tt2
xt2
plot(tt2, xt2, type="l")

#try <- emd(xt2, tt2, boundary="wave")
try <- emd(xt2, tt2, boundary="wave")
### Ploting the IMF's
par(mfrow=c(try$nimf+1, 1), mar=c(2,1,2,1))
rangeimf <- range(try$imf)
#View(rangeimf)
View(try)
for(i in 1:try$nimf) {
  plot(tt2, try$imf[,i], type="l", xlab="", ylab="", ylim=rangeimf,
       main=paste(i, "-th IMF", sep="")); abline(h=0)
}
plot(tt2, try$residue, xlab="", ylab="", main="residue", type="l", axes=FALSE); box()


###
### hilbertspec
###
tt <- seq(0, 0.1, length = 2001)[1:2000]
f1 <- 1776; f2 <- 1000
#bt <- (tt <= 0.033 | tt >= 0.067)
xt <- sin(2*pi*f1*tt) * (tt <= 0.033 | tt >= 0.067) + sin(2*pi*f2*tt)
plot(tt, xt, type="l")
### Before treating intermittence
interm1 <- emd(xt, tt, boundary="wave", max.imf=2, plot.imf=FALSE)
### After treating intermittence
interm2 <- emd(xt, tt, boundary="wave", max.imf=2, plot.imf=FALSE,
               interm=0.0007)
par(mfrow=c(2,1), mar=c(2,2,2,1))
test1 <- hilbertspec(interm1$imf)
spectrogram(test1$amplitude[,1], test1$instantfreq[,1])
test2 <- hilbertspec(interm2$imf, tt=tt)
spectrogram(test2$amplitude[,1], test2$instantfreq[,1])

###
### extrema(y)
###
y <- c(0, 1, 2, 1, -1, 1:4, 5, 6, 0, -4, -6, -5:5, -2:2)
#y <- c(0, 0, 0, 1, -1, 1:4, 4, 4, 0, 0, 0, -5:5, -2:2, 2, 2)
#y <- c(0, 0, 0, 1, -1, 1:4, 4, 4, 0, 0, 0, -5:5, -2:2, 0, 0)
plot(y, type = "b"); abline(h = 0)
extrema(y)

###
###emddenoise
###
ndata <- 1024
tt <- seq(0, 9, length=ndata)
meanf <- (sin(pi*tt) + sin(2*pi*tt) + sin(6*pi*tt)) * (0.0<tt & tt<=3.0) +
  (sin(pi*tt) + sin(6*pi*tt)) * (3.0<tt & tt<=6.0) +
  (sin(pi*tt) + sin(6*pi*tt) + sin(12*pi*tt)) * (6.0<tt & tt<=9.0)
snr <- 3.0
sigma <- c(sd(meanf[tt<=3]) / snr, sd(meanf[tt<=6 & tt>3]) / snr,
           sd(meanf[tt>6]) / snr)
set.seed(1)
error <- c(rnorm(sum(tt<=3), 0, sigma[1]),
           rnorm(sum(tt<=6 & tt>3), 0, sigma[2]), rnorm(sum(tt>6), 0, sigma[3]))
xt <- meanf + error
cv.index <- cvtype(n=ndata, cv.kfold=2, cv.random=FALSE)$cv.index
#try10 <- emddenoise(xt, cv.index=cv.index, cv.level=2, by.imf=TRUE)
#try10$optlambda

###
### Extracting the first IMF by sifting process
###
### Generating a signal
ndata <- 3000
par(mfrow=c(1,1), mar=c(1,1,1,1))
tt2 <- seq(0, 9, length=ndata)
xt2 <- sin(pi * tt2) + sin(2* pi * tt2) + sin(6 * pi * tt2) + 0.5 * tt2
plot(tt2, xt2, xlab="", ylab="", type="l", axes=FALSE); box()
### Extracting the first IMF by sifting process
tryimf <- extractimf(xt2, tt2, check=FALSE)
View(tryimf)
plot(tt2, tryimf$imf, xlab="", ylab="", type="l", axes=FALSE); box()
plot(tt2, tryimf$residue, xlab="", ylab="", type="l", axes=FALSE); box()
View(try)

###
### Empirical Mode Decomposition by Smoothing
###
ndata <- 2048
tt <- seq(0, 9, length=ndata)
xt <- sin(pi * tt) + sin(2* pi * tt) + sin(6 * pi * tt) + 0.5 * tt
set.seed(1)
xt <- xt + rnorm(ndata, 0, sd(xt)/5)
### Empirical Mode Decomposition by Interpolation
emdbyint <- emd(xt, tt, max.imf = 5, boundary = "wave")
### Empirical Mode Decomposition by Smoothing
emdbysm <- semd(xt, tt, cv.kfold=4, boundary="wave", smlevels=1, max.imf=5)
par(mfcol=c(6,2), mar=c(2,2,2,1), oma=c(0,0,2,0))
rangext <- range(xt); rangeimf <- rangext - mean(rangext)

plot(tt, xt, xlab="", ylab="", main="signal", ylim=rangext, type="l")
mtext("Decomposition by EMD", side = 3, line = 2, cex=0.85, font=2)
plot(tt, emdbyint$imf[,1], xlab="", ylab="", main="imf 1", ylim=rangeimf, type="l")
abline(h=0, lty=2)
plot(tt, emdbyint$imf[,2], xlab="", ylab="", main="imf 2", ylim=rangeimf, type="l")
abline(h=0, lty=2)
plot(tt, emdbyint$imf[,3], xlab="", ylab="", main="imf 3", ylim=rangeimf, type="l")
abline(h=0, lty=2)
plot(tt, emdbyint$imf[,4], xlab="", ylab="", main="imf 4", ylim=rangeimf, type="l")
abline(h=0, lty=2)
plot(tt, emdbyint$imf[,5]+emdbyint$residue, xlab="", ylab="", main="remaining signal",
 ylim=rangext, type="l")

plot(tt, xt, xlab="", ylab="", main="signal", ylim=rangext, type="l")
mtext("Decomposition by SEMD", side = 3, line = 2, cex=0.85, font=2)
plot(tt, emdbysm$imf[,1], xlab="", ylab="", main="noise", ylim=rangeimf, type="l")
abline(h=0, lty=2)
plot(tt, emdbysm$imf[,2], xlab="", ylab="", main="imf 1", ylim=rangeimf, type="l")
abline(h=0, lty=2)
plot(tt, emdbysm$imf[,3], xlab="", ylab="", main="imf 2", ylim=rangeimf, type="l")
abline(h=0, lty=2)
plot(tt, emdbysm$imf[,4], xlab="", ylab="", main="imf 3", ylim=rangeimf, type="l")
abline(h=0, lty=2)
plot(tt, emdbysm$residue, xlab="", ylab="", main="residue", ylim=rangext, type="l")