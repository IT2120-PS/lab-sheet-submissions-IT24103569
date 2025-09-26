setwd("C:\\Users\\User\\OneDrive\\Desktop\\IT24103569")
getwd()

data<- read.table("Exercise - LaptopsWeights.txt" , header = TRUE)
fix(data)
attach(data)

#Q1
pop_mean <- mean(Weight.kg.)
pop_sd <- sd(Weight.kg.)


#Q2
samples <- c()
sample_names <- c()

for(i in 1:25) {
  s <- sample(Weight.kg., 6, replace=TRUE)
  samples <- cbind(samples, s)
  sample_names <- c(sample_names, paste("s", i))
}

colnames(samples) <- sample_names

#Q3
sample_means <- apply(samples, 2, mean)
sample_sds <- apply(samples, 2, sd)

mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

pop_mean
pop_sd
mean_of_sample_means
sd_of_sample_means
getwd()
