### y = sin(x)
#x[0-2*pi] [рад]
x <- seq(1, 100) * 2*pi/100
x
y <- sin(x)
plot(x, y, type='l', main = "y = sin(x)")

### 
N <- 256
#x[0-2*pi] [рад]
x <- seq(1, N) * 2*pi/N
x
y <- sin(x)
plot(x, y, type='l', main = "y = sin(x)")

### y = sin(ωt)
#ω = 2πf [рад/с]
#[рад/с]
omega <- 2*pi*1

N <- 256
#t[0-1] [c]
t <- seq(1, N) / N
t
y <- sin(omega*t)
plot(t, y, type='l', main = "y = sin(ωt)")

### y = sin(2πf*t)
#ω = 2πf  [рад/с]
#f = ω/2π [1/с]
omega <- 2*pi*1
f <- omega/(2*pi)

N <- 256
#t[0-1] [c]
t <- seq(1, N) / N
t
y <- sin(2*pi*f*t)
plot(t, y, type='l', main = "y = sin(2πf*t)")

### y = sin(2πf*n*dT)
#ω - угловая частота [рад/с]
#ω = 2πf  [рад/с]
#f - частота сигнала [1/с]
#f = ω/2π [1/с]
#N - количество отсчетов наблюдения
#Tn - период времени наблюдения [c]
#t - время [c]
#t = n*dT [c]
#n - дискретные отсчеты сигнала [0-N]
#dT - период дискретизации [c]
#dT = Tn/N [c]
#dT = t/n [c]

omega <- 2*pi
omega
f <- omega/(2*pi)
f

N <- 256
#n[0-256]
n <- seq(1, N)
n

Tn <- 1 #[c]
dT <- Tn/N
dT
y <- sin(2*pi*f*n*dT)
plot(n, y, type='l', main = "y = sin(2πf*n*dT)")