setwd("C:\\Users\\User\\OneDrive\\Desktop\\IT24103569")

#Exersice

#Q1
#i.
#To generate random numbers from a normal distribution, we can use "rnorm" comand
y <- rnorm(25, mean=45, sd=2)

##ii.
t.test(y , mu=46 , alternative = "less")