setwd("C:\\Users\\Asus\\Desktop\\IT24102351_lab8")
getwd()

data <- read.table("Data - Lab 8.txt", header = TRUE)
fix(data)
attach(data)

popmn <- mean(Nicotine)
popvar <- var(Nicotine)

samples <- c()
n <- c()

for (i in 1:30) {
  s <- sample(Nicotine, 5, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste("s", i))
}

colnames(samples) = n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

samplemean <- mean(s.means)
samplevars <- var(s.means)

popmn
samplemean

truevar = popvar / 5
samplevars




########################Exercise############################

weights<-read.table("Exercise - LaptopsWeights.txt",header = TRUE, sep = ",")

#Q01
weights<-weights$Weight.kg.

pop_mean <- mean(weights)

pop_sd <- sd(weights) * sqrt((length(weights)-1)/length(weights))

pop_mean
pop_sd


#Q02
set.seed(123)  

sample_means <- numeric(25)
sample_sds <- numeric(25)

for (i in 1:25) {
  samp_data <- sample(weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(samp_data)
  sample_sds[i] <- sd(samp_data)
}

sample_means
sample_sds


#Q03
mean_of_means <- mean(sample_means)

sd_of_means <- sd(sample_means)

mean_of_means
sd_of_means