###
### HilbertTransform
###
tt <- seq(1000) * 0.01
sig <- 2*sin(pi * tt)
#asig <- HilbertTransform(sig)

#Return the Hilbert transform of a signal.
ndata = length(sig)
#ndata = length(sig) + 1
h = rep(0, ndata)
if(ndata %% 2 == 0)
{
  h[c(1, ndata/2+1)] = 1 
  h[2:(ndata/2)] = 2 
}
else
{
  h[1] = 1
  h[2:((ndata + 1)/2)] = 2 
}
asig = fft(h * fft(sig), inverse = TRUE)/ndata
#invisible(asig)
###

plot(tt, sig, xlim = c(0, 12))
lines(tt, Re(asig), col = "green")
lines(tt, Im(asig), col = "red")
legend("topright", col = c("black", "green", "red"),
       lty = c(NA, 1, 1), pch = c(1, NA, NA),
       legend = c("Signal", "Real", "Imaginary"))
