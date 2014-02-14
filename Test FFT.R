fft.data <- read.csv("D:/hsa8.csv", as.is = TRUE, sep = ";", header = FALSE)
View(fft.data)

#xt <- seq(1, 256) * 0.1
xt <- seq(1, 256)

graphics::plot.default(
  x = xt,
  y = fft.data$V1,  
  type = "l",
  xlab = "Date",
  ylab = "Value",
  main = "plot.default"
)

#x <- seq(1, 256) * 0.1
#y <- sin(x)
#plot(x, y, type='l')

graphics::plot.default(
  x = xt,
  y = fft.data$V2,  
  type = "l",
  xlab = "Date",
  ylab = "Value",
  main = "plot.default"
)

sig <- fft.data$V1
fft.r <- fft(sig)
plot(xt, sig, xlim = c(0, 256))
lines(xt, Re(fft.r), col = "green")
lines(xt, Im(fft.r), col = "red")

