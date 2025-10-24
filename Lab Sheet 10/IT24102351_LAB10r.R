setwd("C:\\Users\\ASUS\\Desktop\\IT24102351")

##Q1

observed <- c(120, 95, 85, 100)
prob <- c(.25, .25, .25, .25)
chisq.test(x=observed, p=prob)

##Q2

file_path <-  "http://www.sthda.com/sthda/RDoc/data/housetasks.txt" 

housetasks <- read.delim(file_path, row.names =  1)
housetasks

chisq <- chisq.test(housetasks)
chisq

##Q3
#Consider 25% level of significant for the class
#Rejection Region: if the p value for the test is less than 0.25,
#Reject the null hypothesis at 25%  level of significant
#P value for the test got as 2.2e-16
