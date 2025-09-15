setwd("C:\\Users\\User\\OneDrive\\Desktop\\IT24103569")
#Exercise
#Q1
#i.
#Binomial Distribution
#Here, random variable x has binomial distribution with n=50 and p = 0.85

#ii.
#(X>=47) we can write also as (X>46)
pbinom(46, 50, 0.85, lower.tail = FALSE)


#Q2
#i.
#Number of calls received per hour

#ii.
#Poisson distribution
#Here, random variable x has poisson distribution with lambda=12

#iii.
#(X=15)
dpois(15, 12)


