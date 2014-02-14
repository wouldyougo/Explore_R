require(hht)

###
### EEMD
### This function performs ensemble empirical mode decomposition (EEMD).
data(PortFosterEvent)
trials <- 10
nimf <- 10
noise.amp <- 6.4e-07
trials.dir <- "test"
set.seed(628)
#Run EEMD (this may take some time)
EEMD(sig, tt, noise.amp, trials, nimf, trials.dir = trials.dir)
#Compile the results
EEMD.result <- EEMDCompile(trials.dir, trials, nimf)
#Plot the IMFs
time.span <- c(5, 10)
imf.list <- 1:3
os <- TRUE
res <- TRUE
PlotIMFs(EEMD.result, time.span, imf.list, os, res)

### EEMDCompile
### This function compiles individual trial ﬁles from an EEMD run, allowing other functions to plot
### IMFs and Hilbert spectrograms of the data.
data(PortFosterEvent)
trials <- 10
nimf <- 10
noise.amp <- 6.4e-07
trials.dir <- "test"
set.seed(628)
#Run EEMD (this may take some time)
EEMD(sig, tt, noise.amp, trials, nimf, trials.dir = trials.dir)
#Compile the results
EEMD.result <- EEMDCompile(trials.dir, trials, nimf)
#Plot the IMFs
time.span <- c(5, 10)
imf.list <- 1:3
os <- TRUE
res <- TRUE
PlotIMFs(EEMD.result, time.span, imf.list, os, res)


### EEMDResift
### This function resifts the averaged IMF set and saves the results based on rules described in the input resift.rule.
###
data(PortFosterEvent)
trials=10
nimf=10
noise.amp=6.4e-07
trials.dir="test"
set.seed(628)
#Run EEMD (this may take some time)
EEMD(sig, tt, noise.amp, trials, nimf, noise.amp, trials.dir = trials.dir)
#Compile the results
EEMD.result <- EEMDCompile(trials.dir, trials, nimf)
resift.rule="max.var"
resift.result <- EEMDResift(EEMD.result, resift.rule)
#Plot the IMFs
time.span=c(5, 10)
imf.list=1:3
os=TRUE
res=TRUE
PlotIMFs(resift.result, time.span, imf.list, os, res)

### FTGramImage
### This function displays a Fourier spectrogram using the same plot structure and options as HHGramImage
###
data(PortFosterEvent)
dt <- mean(diff(tt))
ft <- list()
ft$nfft <- 4096
ft$ns <- 30
ft$nov <- 29
time.span <- c(5, 10)
freq.span <- c(0, 25)
amp.span <- c(1e-5, 0.0003)
FTGramImage(sig, dt, ft, time.span = time.span, freq.span = freq.span,
            amp.span = amp.span, pretty = TRUE, img.x.format = "%.1f",
            img.y.format = "%.0f",
            main = "Port Foster Event - Fourier Spectrogram")

#Only show IMF 1
dfreq <- 0.1
hgram=HHRender(EEMD.result, dt, dfreq, combine.imfs = FALSE)
HHGramImage(hgram, time.span, freq.span, imf.list = 1,
            pretty = TRUE, img.x.format = "%.1f", img.y.format = "%.0f",
            main = "Port Foster event - ensemble Hilbert spectrogram of IMF 1")
## End(Not run)

#Log frequency plot
dfreq <- 0.001
hgram=HHRender(EEMD.result, dt, dfreq, scaling = "log")
HHGramImage(hgram, time.span, freq.span = c(0, 2),
            pretty = TRUE, img.x.format = "%.1f", img.y.format = "%.2f",
            img.y.lab = "log frequency",
            main = "Port Foster event - ensemble Hilbert spectrogram with log frequency")
## End(Not run)

#Log amplitude plot
HHGramImage(hgram, time.span = time.span, freq.span = freq.span,
            scaling = "log", pretty = TRUE, img.x.format = "%.1f", img.y.format = "%.0f",
            main = "Port Foster event - ensemble Hilbert spectrogram with log amplitude")
## End(Not run)

#Decluster
#show only areas with stable signal
#i.e. each pixel has data from at least 3 EEMD trials
HHGramImage(hgram, time.span = time.span, freq.span = freq.span,
            cluster.span = c(, 10), pretty = TRUE, img.x.format = "%.1f",
            img.y.format = "%.0f",
            main = "Port Foster event - ensemble Hilbert spectrogram")
## End(Not run)

#Plot intersections
HHGramImage(hgram, time.span, freq.span, amp.span = c(1, 5),
            clustergram = TRUE, pretty = TRUE, img.x.format = "%.1f", colorbar.format = "%.0f",
            img.y.format = "%.0f", main = "Port Foster event - signal stability")
## End(Not run)

###
### HHGramImage
### 
data(PortFosterEvent)
trials <- 10
nimf <- 10
noise.amp <- 6.4e-07
trials.dir <- "test"
set.seed(628)
#Run EEMD (this may take some time)
EEMD(sig, tt, noise.amp, trials, nimf, trials.dir = trials.dir)
#Compile the results
EEMD.result <- EEMDCompile(trials.dir, trials, nimf)
#Calculate spectrogram
dt <- 0.1
dfreq <- 0.1
hgram <- HHRender(EEMD.result, dt, dfreq)
#Plot spectrogram
time.span <- c(4, 10)
freq.span <- c(0, 25)
HHGramImage(hgram, time.span, freq.span,
            pretty = TRUE, img.x.format = "%.1f", img.y.format = "%.0f",
            main = "Port Foster event - ensemble Hilbert spectrogram")
## End(Not run)

###
### PlotIMFs
###
data(PortFosterEvent)
#Run EMD
emd.result <- Sig2IMF(sig, tt, sm = "polynomial")
#Plot the first 4 IMFs of the EEMD of a signal.
time.span <- c(5, 10)
imf.list <- 1:4
original.signal <- TRUE
residue <- TRUE
PlotIMFs(emd.result, time.span, imf.list, original.signal, residue)
#Check how much contribution IMFs 2 and 3 make to the complete signal
imf.list <- c(2, 3)
fit.line <- TRUE
PlotIMFs(emd.result, time.span, imf.list, original.signal, residue, fit.line)

### Sig2IMF
### This function conﬁgures and performs empirical mode decomposition using the emd function in the
### EMD package.
data(PortFosterEvent)
#Run EMD
emd.result=Sig2IMF(sig, tt)
#Display IMFs
time.span <- c(5, 10)
imf.list <- 1:3
original.signal <- TRUE
residue <- TRUE
PlotIMFs(emd.result, time.span, imf.list, original.signal, residue)
#Plot spectrogram
sdt <- tt[2] - tt[1]
dfreq <- 0.25
freq.span <- c(0, 25)
hgram <- HHRender(emd.result, sdt, dfreq, freq.span = freq.span, verbose = FALSE)
time.span <- c(4, 10)
freq.span <- c(0, 25)
amp.span <- c(0.000001, 0.00001)
HHGramImage(hgram, time.span = time.span,
            freq.span = freq.span, amp.span = amp.span,
            pretty = TRUE)

### HHSpecPlot
#Here we see how the EMD produces a dyadic filter bank for uniform random noise
#The frequency distributions of all but the first IMF display a Chi-Square distribution
#See Huang, N. E. & Wu, Z.
#A review on Hilbert-Huang Transform: Method and its applications to geophysical studies.
#Reviews of Geophysics, 2008, 46, RG2006
#The EMD of this signal may take a couple of minutes to run
set.seed(628)
sig <- runif(10000)
tt <- seq_len(length(sig)) * 0.01
emd.result <- Sig2IMF(sig, tt)
dfreq <- 0.1
hspec <- HHSpectrum(emd.result, dfreq)
HHSpecPlot(hspec, show.imfs = TRUE,
           imf.list = 1:10, show.total = TRUE, scaling = "sqrt",
           imf.lwd = rep(2, 10), total.lty = 3)
## End(Not run)

### HHSpectrum
### Generates a Hilbert periodogram from the results of Sig2IMF and EEMD.
###
data(PortFosterEvent)
emd.result <- Sig2IMF(sig, tt)
dfreq <- 0.1
hspec <- HHSpectrum(emd.result, dfreq)
HHSpecPlot(hspec, show.fourier = TRUE, scale.fourier = TRUE)

###
### HilbertEnvelope
###
tt <- seq(1000) * 0.01
sig <- sin(4 * pi * tt) + sin(3.4 * pi * tt)
asig <- HilbertTransform(sig)
env <- HilbertEnvelope(asig)
plot(tt, sig, type = "l")
lines(tt, env, col = "red")
lines(tt, -env, col = "red")

###
### HilbertTransform
###
tt <- seq(1000) * 0.01
sig <- 2*sin(pi * tt)
asig <- HilbertTransform(sig)
plot(tt, sig, xlim = c(0, 12))
lines(tt, Re(asig), col = "green")
lines(tt, Im(asig), col = "red")
legend("topright", col = c("black", "green", "red"),
       lty = c(NA, 1, 1), pch = c(1, NA, NA),
       legend = c("Signal", "Real", "Imaginary"))
