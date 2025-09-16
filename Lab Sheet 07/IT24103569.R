setwd("C:\\Users\\User\\OneDrive\\Desktop\\IT24103569")
#Exercise
#Q1
#P(25>=X>=10) --> P(X<=25) - P(X<=10)
punif(25, min=0, max=40, lower.tail = TRUE) - punif(10, min=0, max=40, lower.tail=TRUE)

#Q2
#(X<=2)
pexp(2, rate=1/3, lower.tail=TRUE)

#Q3
#i.
#mean = 100, #std = 15 P(X>130) --> 1-P(X<=130)
1-pnorm(130, mean=100, sd=15, lower.tail=TRUE)

#ii.
qnorm(0.95, mean=100, sd=15)


