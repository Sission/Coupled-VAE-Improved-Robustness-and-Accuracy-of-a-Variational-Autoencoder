#Figure 3: The likelihood for the input images under the VAE model
ml.coupled2 <- scan(file = "~/Desktop/Project/ml0_alpha2")
mean(ml.coupled2)
expml.coupled2 <- exp(ml.coupled2)
max(expml.coupled2)
min(expml.coupled2)
avg2 <- mean(expml.coupled2)
logavg2 <- log10(avg2)
geo2 <- exp(mean(log(expml.coupled2)))
loggeo2 <- log10(geo2)
rob2 <- (sum(expml.coupled2^(-2/3))/5000)^(-3/2)
logrob2 <- log10(rob2)
b <- seq(-100,1,by = 1)
logscale<-log10(expml.coupled2)
h <- hist(logscale, breaks = b)
new_counts <- log10(h$counts)+1
new_counts[which(new_counts == -Inf)] <- 0
h$counts <- new_counts
plot(h, main = "", ylab = "Frequency in logscale ", ylim = c(0, 4), xlab = "Likelihood in logscale", xaxt="n", yaxt = "n",cex.lab=1.55)
#axis(1,at = c(-180, -160, -140, -120, -100, -80, -60, -40, -20, 0), labels = c(10^(-180), 10^(-160), 10^(-140), 10^(-120), 10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.5)
axis(1,at = c(-100, -80, -60, -40, -20, 0), labels = c(10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.55)
axis(2,at = c(0, 1, 2, 3,4), labels = c(0.1, 10, 100, 1000,10000),cex.axis = 1.55)
abline(v=logavg2,col="red", lwd = 2)
abline(v=loggeo2,col="blue", lwd = 2)
abline(v=logrob2,col="green", lwd = 2)
legend(-65, 4.5, "Accuracy", text.col =  "blue",bty = "n", cex = 1.5)
legend(-33, 4.5, "Decisiveness", text.col =  "red", bty = "n", cex = 1.5)
legend(-99, 4.5, "Robustness", text.col =  "green", bty = "n", cex = 1.5)
legend(-112,4.8,expression(paste(kappa," = 0")), bty = "n", cex = 1.5)

#Figure 5: The histograms of likelihood for the input images with various kappa values.
#(b) kappa = 0.025
ml.coupled2 <- scan(file = "~/Desktop/Project/ml025_alpha2")
mean(ml.coupled2)
expml.coupled2 <- exp(ml.coupled2)
max(expml.coupled2)
min(expml.coupled2)
avg2 <- mean(expml.coupled2)
logavg2 <- log10(avg2)
geo2 <- exp(mean(log(expml.coupled2)))
loggeo2 <- log10(geo2)
rob2 <- (sum(expml.coupled2^(-2/3))/5000)^(-3/2)
logrob2 <- log10(rob2)
b <- seq(-100,1,by = 1)
logscale<-log10(expml.coupled2)
h <- hist(logscale, breaks = b)
new_counts <- log10(h$counts)+1
new_counts[which(new_counts == -Inf)] <- 0
h$counts <- new_counts
plot(h, main = "", ylab = "Frequency in logscale ", ylim = c(0, 4), xlab = "Likelihood in logscale", xaxt="n", yaxt = "n",cex.lab=1.55)
#axis(1,at = c(-180, -160, -140, -120, -100, -80, -60, -40, -20, 0), labels = c(10^(-180), 10^(-160), 10^(-140), 10^(-120), 10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.5)
axis(1,at = c(-100, -80, -60, -40, -20, 0), labels = c(10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.55)
axis(2,at = c(0, 1, 2, 3,4), labels = c(0.1, 10, 100, 1000,10000),cex.axis = 1.55)
abline(v=logavg2,col="red", lwd = 2)
abline(v=loggeo2,col="blue", lwd = 2)
abline(v=logrob2,col="green", lwd = 2)
legend(-55, 4.5, "Accuracy", text.col =  "blue",bty = "n", cex = 1.5)
legend(-33, 4.5, "Decisiveness", text.col =  "red", bty = "n", cex = 1.5)
legend(-99, 4.5, "Robustness", text.col =  "green", bty = "n", cex = 1.5)
legend(-112,4.8,expression(paste(kappa," = 0.025")), bty = "n", cex = 1.5)

#(c) kappa = 0.05
ml.coupled2 <- scan(file = "~/Desktop/Project/ml005_alpha2")
mean(ml.coupled2)
expml.coupled2 <- exp(ml.coupled2)
max(expml.coupled2)
min(expml.coupled2)
avg2 <- mean(expml.coupled2)
logavg2 <- log10(avg2)
geo2 <- exp(mean(log(expml.coupled2)))
loggeo2 <- log10(geo2)
rob2 <- (sum(expml.coupled2^(-2/3))/5000)^(-3/2)
logrob2 <- log10(rob2)
b <- seq(-100,1,by = 1)
logscale<-log10(expml.coupled2)
h <- hist(logscale, breaks = b)
new_counts <- log10(h$counts)+1
new_counts[which(new_counts == -Inf)] <- 0
h$counts <- new_counts
plot(h, main = "", ylab = "Frequency in logscale ", ylim = c(0, 4), xlab = "Likelihood in logscale", xaxt="n", yaxt = "n",cex.lab=1.55)
#axis(1,at = c(-180, -160, -140, -120, -100, -80, -60, -40, -20, 0), labels = c(10^(-180), 10^(-160), 10^(-140), 10^(-120), 10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.5)
axis(1,at = c(-100, -80, -60, -40, -20, 0), labels = c(10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.55)
axis(2,at = c(0, 1, 2, 3,4), labels = c(0.1, 10, 100, 1000,10000),cex.axis = 1.55)
abline(v=logavg2,col="red", lwd = 2)
abline(v=loggeo2,col="blue", lwd = 2)
abline(v=logrob2,col="green", lwd = 2)
legend(-55, 4.5, "Accuracy", text.col =  "blue",bty = "n", cex = 1.5)
legend(-33, 4.5, "Decisiveness", text.col =  "red", bty = "n", cex = 1.5)
legend(-99, 4.5, "Robustness", text.col =  "green", bty = "n", cex = 1.5)
legend(-112,4.8,expression(paste(kappa," = 0.05")), bty = "n", cex = 1.5)

#(d) kappa = 0.1
ml.coupled2 <- scan(file = "~/Desktop/Project/ml01_alpha2")
mean(ml.coupled2)
expml.coupled2 <- exp(ml.coupled2)
max(expml.coupled2)
min(expml.coupled2)
avg2 <- mean(expml.coupled2)
logavg2 <- log10(avg2)
geo2 <- exp(mean(log(expml.coupled2)))
loggeo2 <- log10(geo2)
rob2 <- (sum(expml.coupled2^(-2/3))/5000)^(-3/2)
logrob2 <- log10(rob2)
b <- seq(-100,1,by = 1)
logscale<-log10(expml.coupled2)
h <- hist(logscale, breaks = b)
new_counts <- log10(h$counts)+1
new_counts[which(new_counts == -Inf)] <- 0
h$counts <- new_counts
plot(h, main = "", ylab = "Frequency in logscale ", ylim = c(0, 4), xlab = "Likelihood in logscale", xaxt="n", yaxt = "n",cex.lab=1.55)
#axis(1,at = c(-180, -160, -140, -120, -100, -80, -60, -40, -20, 0), labels = c(10^(-180), 10^(-160), 10^(-140), 10^(-120), 10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.5)
axis(1,at = c(-100, -80, -60, -40, -20, 0), labels = c(10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.55)
axis(2,at = c(0, 1, 2, 3,4), labels = c(0.1, 10, 100, 1000,10000),cex.axis = 1.55)
abline(v=logavg2,col="red", lwd = 2)
abline(v=loggeo2,col="blue", lwd = 2)
abline(v=logrob2,col="green", lwd = 2)
legend(-55, 4.5, "Accuracy", text.col =  "blue",bty = "n", cex = 1.5)
legend(-33, 4.5, "Decisiveness", text.col =  "red", bty = "n", cex = 1.5)
legend(-99, 4.5, "Robustness", text.col =  "green", bty = "n", cex = 1.5)
legend(-112,4.8,expression(paste(kappa," = 0.1")), bty = "n", cex = 1.5)

#Figure 6: The rose plots of the various standard deviation values in 20 dimensions.
#(a) kappa = 0
sigma00 <- scan(file = "~/Desktop/Project/sigma0_alpha2")
h <- hist(sigma00,breaks = seq(0,1,by = 0.01))
dt <- data.frame(A = h$counts/10000, B=seq(0,0.99,by = 0.01))
p <- ggplot(dt, aes(x=B, y=A, fill=B))+
  geom_bar(stat = "identity",color="black",alpha=0.7)+
  coord_polar()+
  theme_bw()+
  labs(x="",y="")+
  theme(legend.position = "none")
p

#(b) kappa = 0.025
sigma00 <- scan(file = "~/Desktop/Project/sigma025_alpha2")
h <- hist(sigma00,breaks = seq(0,1,by = 0.01))
dt <- data.frame(A = h$counts/10000, B=seq(0,0.99,by = 0.01))
p <- ggplot(dt, aes(x=B, y=A, fill=B))+
  geom_bar(stat = "identity",color="black",alpha=0.7)+
  coord_polar()+
  theme_bw()+
  labs(x="",y="")+
  theme(legend.position = "none")
p

#(c) kappa = 0.05
sigma00 <- scan(file = "~/Desktop/Project/sigma005_alpha2")
h <- hist(sigma00,breaks = seq(0,1,by = 0.01))
dt <- data.frame(A = h$counts/10000, B=seq(0,0.99,by = 0.01))
p <- ggplot(dt, aes(x=B, y=A, fill=B))+
  geom_bar(stat = "identity",color="black",alpha=0.7)+
  coord_polar()+
  theme_bw()+
  labs(x="",y="")+
  theme(legend.position = "none")
p

#(d) kappa = 0.1
sigma00 <- scan(file = "~/Desktop/Project/sigma01_alpha2")
h <- hist(sigma00,breaks = seq(0,1,by = 0.01))
dt <- data.frame(A = h$counts/10000, B=seq(0,0.99,by = 0.01))
p <- ggplot(dt, aes(x=B, y=A, fill=B))+
  geom_bar(stat = "identity",color="black",alpha=0.7)+
  coord_polar()+
  theme_bw()+
  labs(x="",y="")+
  theme(legend.position = "none")
p

#Figure 7: The standard deviation of latent variable samples near the three generalized mean metrics.
#(a) kappa = 0
sigma00 <- scan(file = "~/Desktop/Project/sigma0_alpha2")
ml.coupled2 <- scan(file = "~/Desktop/Project/ml0_alpha2")
mean(sigma00)
max(sigma00)
ml_00 <- ml.coupled2
mean(ml_00)
expml00 <- exp(ml_00)
rob00 <- (sum(expml00^(-2/3))/5000)^(-3/2)
logrob00 <- log10(rob00)
dif <- abs(rob00-expml00)
which.min(dif)
sigmarob00 <- sigma00[(4303*20+1):(4304*20)]
avg00 <- mean(expml00)
logavg00 <- log10(avg00)
dif <- abs(avg00-expml00)
which.min(dif)
sigmaavg00 <- sigma00[(2401*20+1):(2402*20)]
geo00 <- exp(mean(log(expml00)))
loggeo00 <- log10(geo00)
dif <- abs(geo00-expml00)
which.min(dif)
sigmageo00 <- sigma00[(2164*20+1):(2165*20)]
plot(sigmaavg00,type = "b",main = expression(paste(kappa," = 0")),ylim = c(0,0.7),
     ylab = expression(paste(sigma," of each dimension of z")), xlab = "dimensions of z",col="red", cex.lab = 1.5,cex.axis=1.5)
lines(sigmarob00,col="green",type = "b")
lines(sigmageo00,col="blue",type = "b")

#(b) kappa = 0.025
sigma00 <- scan(file = "~/Desktop/Project/sigma025_alpha2")
ml.coupled2 <- scan(file = "~/Desktop/Project/ml025_alpha2")
mean(sigma00)
max(sigma00)
ml_00 <- ml.coupled2
mean(ml_00)
expml00 <- exp(ml_00)
rob00 <- (sum(expml00^(-2/3))/5000)^(-3/2)
logrob00 <- log10(rob00)
dif <- abs(rob00-expml00)
which.min(dif)
sigmarob00 <- sigma00[(891*20+1):(892*20)]
avg00 <- mean(expml00)
logavg00 <- log10(avg00)
dif <- abs(avg00-expml00)
which.min(dif)
sigmaavg00 <- sigma00[(3921*20+1):(3922*20)]
geo00 <- exp(mean(log(expml00)))
loggeo00 <- log10(geo00)
dif <- abs(geo00-expml00)
which.min(dif)
sigmageo00 <- sigma00[(4095*20+1):(4096*20)]
plot(sigmaavg00,type = "b",main = expression(paste(kappa," = 0.025")),ylim = c(0,0.7),
     ylab = expression(paste(sigma," of each dimension of z")), xlab = "dimensions of z",col="red", cex.lab = 1.5,cex.axis=1.5)
lines(sigmarob00,col="green",type = "b")
lines(sigmageo00,col="blue",type = "b")
# magnified plot
plot(sigmaavg00,type = "b",col="red",ylim =c(0, 0.2),cex.axis=1.5,xlab = "", ylab = "")
lines(sigmarob00,col="green",type = "b")
lines(sigmageo00,col="blue",type = "b")

#(c) kappa = 0.05
sigma00 <- scan(file = "~/Desktop/Project/sigma005_alpha2")
ml.coupled2 <- scan(file = "~/Desktop/Project/ml005_alpha2")
mean(sigma00)
max(sigma00)
ml_00 <- ml.coupled2
mean(ml_00)
expml00 <- exp(ml_00)
rob00 <- (sum(expml00^(-2/3))/5000)^(-3/2)
logrob00 <- log10(rob00)
dif <- abs(rob00-expml00)
which.min(dif)
sigmarob00 <- sigma00[(895*20+1):(896*20)]
avg00 <- mean(expml00)
logavg00 <- log10(avg00)
dif <- abs(avg00-expml00)
which.min(dif)
sigmaavg00 <- sigma00[(617*20+1):(618*20)]
geo00 <- exp(mean(log(expml00)))
loggeo00 <- log10(geo00)
dif <- abs(geo00-expml00)
which.min(dif)
sigmageo00 <- sigma00[(4202*20+1):(4203*20)]
plot(sigmaavg00,type = "b",main = expression(paste(kappa," = 0.05")),ylim = c(0,0.7),
     ylab = expression(paste(sigma," of each dimension of z")), xlab = "dimensions of z",col="red", cex.lab = 1.5,cex.axis=1.5)
lines(sigmarob00,col="green",type = "b")
lines(sigmageo00,col="blue",type = "b")
# magnified plot
plot(sigmaavg00,type = "b",col="red",ylim =c(0, 0.03),cex.axis=1.5,xlab = "", ylab = "")
lines(sigmarob00,col="green",type = "b")
lines(sigmageo00,col="blue",type = "b")

#(d) kappa = 0.1
sigma00 <- scan(file = "~/Desktop/Project/sigma01_alpha2")
ml.coupled2 <- scan(file = "~/Desktop/Project/ml01_alpha2")
mean(sigma00)
max(sigma00)
ml_00 <- ml.coupled2
mean(ml_00)
expml00 <- exp(ml_00)
rob00 <- (sum(expml00^(-2/3))/5000)^(-3/2)
logrob00 <- log10(rob00)
dif <- abs(rob00-expml00)
which.min(dif)
sigmarob00 <- sigma00[(4501*20+1):(4502*20)]
avg00 <- mean(expml00)
logavg00 <- log10(avg00)
dif <- abs(avg00-expml00)
which.min(dif)
sigmaavg00 <- sigma00[(2733*20+1):(2734*20)]
geo00 <- exp(mean(log(expml00)))
loggeo00 <- log10(geo00)
dif <- abs(geo00-expml00)
which.min(dif)
sigmageo00 <- sigma00[(1216*20+1):(1217*20)]
plot(sigmaavg00,type = "b",main = expression(paste(kappa," = 0.01")),ylim = c(0,0.7),
     ylab = expression(paste(sigma," of each dimension of z")), xlab = "dimensions of z",col="red", cex.lab = 1.5,cex.axis=1.5)
lines(sigmarob00,col="green",type = "b")
lines(sigmageo00,col="blue",type = "b")
# magnified plot
plot(sigmaavg00,type = "b",col="red",ylim =c(0, 0.012),cex.axis=1.5,xlab = "", ylab = "")
lines(sigmarob00,col="green",type = "b")
lines(sigmageo00,col="blue",type = "b")

#Figure 8: The histogram likelihood plots with a two-dimensional latent variable.
#(a) kappa = 0
ml.coupled2 <- scan(file = "~/Desktop/Project/ml0_alpha2_d2")
mean(ml.coupled2)
expml.coupled2 <- exp(ml.coupled2)
max(expml.coupled2)
min(expml.coupled2)
avg2 <- mean(expml.coupled2)
logavg2 <- log10(avg2)
geo2 <- exp(mean(log(expml.coupled2)))
loggeo2 <- log10(geo2)
rob2 <- (sum(expml.coupled2^(-2/3))/5000)^(-3/2)
logrob2 <- log10(rob2)
b <- seq(-180,1,by = 1)
logscale<-log10(expml.coupled2)
h <- hist(logscale, breaks = b)
new_counts <- log10(h$counts)+1
new_counts[which(new_counts == -Inf)] <- 0
h$counts <- new_counts
plot(h, main = "", ylab = "Frequency in logscale ", ylim = c(0, 4), xlab = "Likelihood in logscale", xaxt="n", yaxt = "n",cex.lab=1.55)
axis(1,at = c(-180, -160, -140, -120, -100, -80, -60, -40, -20, 0), labels = c(10^(-180), 10^(-160), 10^(-140), 10^(-120), 10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.5)
#axis(1,at = c(-100, -80, -60, -40, -20, 0), labels = c(10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.55)
axis(2,at = c(0, 1, 2, 3,4), labels = c(0.1, 10, 100, 1000,10000),cex.axis = 1.55)
abline(v=logavg2,col="red", lwd = 2)
abline(v=loggeo2,col="blue", lwd = 2)
abline(v=logrob2,col="green", lwd = 2)
legend(-90, 4.5, "Accuracy", text.col =  "blue",bty = "n", cex = 1.5)
legend(-50, 4.5, "Decisiveness", text.col =  "red", bty = "n", cex = 1.5)
legend(-180, 4.5, "Robustness", text.col =  "green", bty = "n", cex = 1.5)
legend(-205,4.7,expression(paste(kappa," = 0")), bty = "n", cex = 1.5)

#(b) kappa = 0.025
ml.coupled2 <- scan(file = "~/Desktop/Project/ml025_alpha2_d2")
mean(ml.coupled2)
expml.coupled2 <- exp(ml.coupled2)
max(expml.coupled2)
min(expml.coupled2)
avg2 <- mean(expml.coupled2)
logavg2 <- log10(avg2)
geo2 <- exp(mean(log(expml.coupled2)))
loggeo2 <- log10(geo2)
rob2 <- (sum(expml.coupled2^(-2/3))/5000)^(-3/2)
logrob2 <- log10(rob2)
b <- seq(-180,1,by = 1)
logscale<-log10(expml.coupled2)
h <- hist(logscale, breaks = b)
new_counts <- log10(h$counts)+1
new_counts[which(new_counts == -Inf)] <- 0
h$counts <- new_counts
plot(h, main = "", ylab = "Frequency in logscale ", ylim = c(0, 4), xlab = "Likelihood in logscale", xaxt="n", yaxt = "n",cex.lab=1.55)
axis(1,at = c(-180, -160, -140, -120, -100, -80, -60, -40, -20, 0), labels = c(10^(-180), 10^(-160), 10^(-140), 10^(-120), 10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.5)
#axis(1,at = c(-100, -80, -60, -40, -20, 0), labels = c(10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.55)
axis(2,at = c(0, 1, 2, 3,4), labels = c(0.1, 10, 100, 1000,10000),cex.axis = 1.55)
abline(v=logavg2,col="red", lwd = 2)
abline(v=loggeo2,col="blue", lwd = 2)
abline(v=logrob2,col="green", lwd = 2)
legend(-80, 4.5, "Accuracy", text.col =  "blue",bty = "n", cex = 1.5)
legend(-40, 4.5, "Decisiveness", text.col =  "red", bty = "n", cex = 1.5)
legend(-180, 4.5, "Robustness", text.col =  "green", bty = "n", cex = 1.5)
legend(-205,4.7,expression(paste(kappa," = 0.025")), bty = "n", cex = 1.5)

#(c) kappa = 0.05
ml.coupled2 <- scan(file = "~/Desktop/Project/ml005_alpha2_d2")
mean(ml.coupled2)
expml.coupled2 <- exp(ml.coupled2)
max(expml.coupled2)
min(expml.coupled2)
avg2 <- mean(expml.coupled2)
logavg2 <- log10(avg2)
geo2 <- exp(mean(log(expml.coupled2)))
loggeo2 <- log10(geo2)
rob2 <- (sum(expml.coupled2^(-2/3))/5000)^(-3/2)
logrob2 <- log10(rob2)
b <- seq(-180,1,by = 1)
logscale<-log10(expml.coupled2)
h <- hist(logscale, breaks = b)
new_counts <- log10(h$counts)+1
new_counts[which(new_counts == -Inf)] <- 0
h$counts <- new_counts
plot(h, main = "", ylab = "Frequency in logscale ", ylim = c(0, 4), xlab = "Likelihood in logscale", xaxt="n", yaxt = "n",cex.lab=1.55)
axis(1,at = c(-180, -160, -140, -120, -100, -80, -60, -40, -20, 0), labels = c(10^(-180), 10^(-160), 10^(-140), 10^(-120), 10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.5)
#axis(1,at = c(-100, -80, -60, -40, -20, 0), labels = c(10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.55)
axis(2,at = c(0, 1, 2, 3,4), labels = c(0.1, 10, 100, 1000,10000),cex.axis = 1.55)
abline(v=logavg2,col="red", lwd = 2)
abline(v=loggeo2,col="blue", lwd = 2)
abline(v=logrob2,col="green", lwd = 2)
legend(-70, 4.5, "Accuracy", text.col =  "blue",bty = "n", cex = 1.5)
legend(-40, 4.5, "Decisiveness", text.col =  "red", bty = "n", cex = 1.5)
legend(-170, 4.5, "Robustness", text.col =  "green", bty = "n", cex = 1.5)
legend(-205,4.7,expression(paste(kappa," = 0.05")), bty = "n", cex = 1.5)

#(d) kappa = 0.075
ml.coupled2 <- scan(file = "~/Desktop/Project/ml075_alpha2_d2")
mean(ml.coupled2)
expml.coupled2 <- exp(ml.coupled2)
max(expml.coupled2)
min(expml.coupled2)
avg2 <- mean(expml.coupled2)
logavg2 <- log10(avg2)
geo2 <- exp(mean(log(expml.coupled2)))
loggeo2 <- log10(geo2)
rob2 <- (sum(expml.coupled2^(-2/3))/5000)^(-3/2)
logrob2 <- log10(rob2)
b <- seq(-180,1,by = 1)
logscale<-log10(expml.coupled2)
h <- hist(logscale, breaks = b)
new_counts <- log10(h$counts)+1
new_counts[which(new_counts == -Inf)] <- 0
h$counts <- new_counts
plot(h, main = "", ylab = "Frequency in logscale ", ylim = c(0, 4), xlab = "Likelihood in logscale", xaxt="n", yaxt = "n",cex.lab=1.55)
axis(1,at = c(-180, -160, -140, -120, -100, -80, -60, -40, -20, 0), labels = c(10^(-180), 10^(-160), 10^(-140), 10^(-120), 10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.5)
#axis(1,at = c(-100, -80, -60, -40, -20, 0), labels = c(10^(-100), 10^(-80), 10^(-60), 10^(-40), 10^(-20), 1), cex.axis = 1.55)
axis(2,at = c(0, 1, 2, 3,4), labels = c(0.1, 10, 100, 1000,10000),cex.axis = 1.55)
abline(v=logavg2,col="red", lwd = 2)
abline(v=loggeo2,col="blue", lwd = 2)
abline(v=logrob2,col="green", lwd = 2)
legend(-70, 4.5, "Accuracy", text.col =  "blue",bty = "n", cex = 1.5)
legend(-40, 4.5, "Decisiveness", text.col =  "red", bty = "n", cex = 1.5)
legend(-170, 4.5, "Robustness", text.col =  "green", bty = "n", cex = 1.5)
legend(-205,4.7,expression(paste(kappa," = 0.075")), bty = "n", cex = 1.5)

#Figure 9: The rose plots of the various standard deviation values in 2 dimensions.
#(a) kappa = 0
sigma00 <- scan(file = "~/Desktop/Project/sigma0_alpha2_d2")
h <- hist(sigma00,breaks = seq(0,1,by = 0.01))
dt <- data.frame(A = h$counts/10000, B=seq(0,0.99,by = 0.01))
p <- ggplot(dt, aes(x=B, y=A, fill=B))+
  geom_bar(stat = "identity",color="black",alpha=0.7)+
  coord_polar()+
  theme_bw()+
  labs(x="",y="")+
  theme(legend.position = "none")
p

#(b) kappa = 0.025
sigma00 <- scan(file = "~/Desktop/Project/sigma025_alpha2_d2")
h <- hist(sigma00,breaks = seq(0,1,by = 0.01))
dt <- data.frame(A = h$counts/10000, B=seq(0,0.99,by = 0.01))
p <- ggplot(dt, aes(x=B, y=A, fill=B))+
  geom_bar(stat = "identity",color="black",alpha=0.7)+
  coord_polar()+
  theme_bw()+
  labs(x="",y="")+
  theme(legend.position = "none")
p

#(c) kappa = 0.05
sigma00 <- scan(file = "~/Desktop/Project/sigma005_alpha2_d2")
h <- hist(sigma00,breaks = seq(0,1,by = 0.01))
dt <- data.frame(A = h$counts/10000, B=seq(0,0.99,by = 0.01))
p <- ggplot(dt, aes(x=B, y=A, fill=B))+
  geom_bar(stat = "identity",color="black",alpha=0.7)+
  coord_polar()+
  theme_bw()+
  labs(x="",y="")+
  theme(legend.position = "none")
p

#(d) kappa = 0.075
sigma00 <- scan(file = "~/Desktop/Project/sigma075_alpha2_d2")
h <- hist(sigma00,breaks = seq(0,1,by = 0.01))
dt <- data.frame(A = h$counts/10000, B=seq(0,0.99,by = 0.01))
p <- ggplot(dt, aes(x=B, y=A, fill=B))+
  geom_bar(stat = "identity",color="black",alpha=0.7)+
  coord_polar()+
  theme_bw()+
  labs(x="",y="")+
  theme(legend.position = "none")
p
