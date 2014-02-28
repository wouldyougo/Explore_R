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
  main = "sig"
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
  main = "AForge.Math.FourierTransform.Direction.Forward"
)

sig <- fft.data$V1
fft.r <- fft(sig)
plot(xt, sig, xlim = c(0, 256))
lines(xt, Re(fft.r), col = "green")
lines(xt, Im(fft.r), col = "red")
Re(fft.r)

graphics::plot.default(
  x = xt,
  y = fft.data$V4,  
  type = "l",
  xlab = "Date",
  ylab = "Value",
  main = "AForge.Math.FourierTransform.Direction.Backward"
)

graphics::plot.default(
  x = xt,
  y = fft.data$V15,  
  type = "l",
  xlab = "Date",
  ylab = "Value",
  main = "alglib.fftr1d(FT5, out FT5f)"
)

# A - амплитуда
# phi - фаза
# omega Угловая частота в радианах в секунду
# omega = 2*pi*f
# A*sin(omega*t + phi)
# Для перевода из градусов в радианы нужно умножить значение на 2*Math.PI/360.
# A*sin(2*pi*f*t + phi)
# Фаза выражается в угловых единицах (радианах, градусах) или в циклах (долях периода):
# 1 цикл = 2\pi  радиан = 360 градусов

### sin
frequency <- 1.0
amplitude <- 1.0
phaseShift <- 0.0
#samplingRate  <- 360
#theta = 2.0 * pi * frequency / samplingRate
#theta

x <- seq(1, 256)/256
y <- amplitude * sin(x * 2.0 * pi * frequency  + phaseShift)
graphics::plot.default(
  x = x,
  y = y,  
  type = "l",
  xlab = "x",
  ylab = "y",
  xlim = c(0, 1),
  main = " "
)

frequency <- 10.0
amplitude <- 1.0
phaseShift <- 0.0
#samplingRate  <- 360
#theta = 2.0 * pi * frequency / samplingRate
#theta

x <- seq(1, 256)/256
y1 <- amplitude * sin(x * 2.0 * pi * frequency  + phaseShift)
graphics::plot.default(
  x = x,
  y = y1,  
  type = "l",
  xlab = "x",
  ylab = "y",
  xlim = c(0, 1),
  main = " "
)
y <- y + y1
graphics::plot.default(
  x = x,
  y = y,  
  type = "l",
  xlab = "x",
  ylab = "y",
  xlim = c(0, 1),
  main = " "
)

#??fft
#Xk = Sum[n=0;N-1](xn*e^(-j*2pi*k*n/N)) 
#xn = Sum[k=0;N-1](Xk*e^(-j*2pi*k*n/N))
#
#N — количество значений сигнала, измеренных за период, а также количество компонент разложения;
#x{n},\quad n=0,\dots ,N-1, — измеренные значения сигнала 
#(в дискретных временных точках с номерами n=0,\dots ,N-1, 
#которые являются входными данными для прямого преобразования и выходными для обратного;
#X{k},\quad k=0,\dots ,N-1, — N комплексных амплитуд синусоидальных сигналов, слагающих исходный сигнал; 
#являются выходными данными для прямого преобразования и входными для обратного; 
#поскольку амплитуды комплексные, то по ним можно вычислить одновременно и амплитуду, и фазу;
#|X{k}| / N — обычная (вещественная) амплитуда k-го синусоидального сигнала;
#arg(X{k}) — фаза k-го синусоидального сигнала (аргумент комплексного числа);
#k — индекс частоты. 
#Частота k-го сигнала равна k / T, 
#где T — период времени, в течение которого брались входные данные.
#Из последнего видно, что преобразование раскладывает сигнал на синусоидальные составляющие (которые называются гармониками) 
#с частотами от N колебаний за период до одного колебания за период. 
#Частота дискретизации сама по себе равна N отсчётов за период.


#sample rate — частота взятия отсчетов непрерывного во времени сигнала при его дискретизации 
#(в частности, аналого-цифровым преобразователем). Измеряется в герцах.
#sample rate = N/T

###fft.sin
fft.sin <- fft(y)
#lines(x, Re(fft.sin), col = "green")
graphics::plot.default(
  x = x,
  y = Re(fft.sin),  
  type = "l",
  xlab = "x",
  ylab = "y",
  xlim = c(0, 1),
  col = "green",
  main = "Re(fft.sin)"
)
Re(fft.sin)
#lines(x, Im(fft.sin), col = "red")
graphics::plot.default(
  x = x,
  y = Im(fft.sin),  
  type = "l",
  xlab = "x",
  ylab = "y",
  xlim = c(0, 1),
  col = "red",
  main = "Im(fft.sin)"
)

### sin
frequency <- 3.0
amplitude <- 1.0
phaseShift <- 0.0
#phaseShift <- pi/2.0
N <- 256
T <- 360
sampleRate <- N/T
sampleRate


x <- seq(1, N)/T
y <- amplitude * sin(x * 2.0 * pi * frequency  + phaseShift)
plot(x, y, type='l')

fft.sin <- fft(y)
plot(x, Re(fft.sin), type='l', col = "green", main = "Re(fft.sin)")
Re(fft.sin)
#plot(x, Im(fft.sin), type='l', col = "red", main = "Im(fft.sin)")

dt = T/N
x <- seq(1, N)
y <- amplitude * sin(x * 2.0 * pi / T + phaseShift)
plot(x, y, type='l')
#??sin

fft.sin <- fft(y)
plot(x, Re(fft.sin), type='l', col = "green", main = "Re(fft.sin)")
Re(fft.sin)
#plot(x, Im(fft.sin), type='l', col = "red", main = "Im(fft.sin)")

dt = T/N
x <- seq(1, N)
y <- amplitude * sin(x * 2.0 * pi * dt/ T + phaseShift)
plot(x, y, type='l')
#??sin

fft.sin <- fft(y)
plot(x, Re(fft.sin), type='l', col = "green", main = "Re(fft.sin)")
Re(fft.sin)
#plot(x, Im(fft.sin), type='l', col = "red", main = "Im(fft.sin)")
#y = A sin(2pi*t/T)
#y = A sin(2pi*x*dt/T)
