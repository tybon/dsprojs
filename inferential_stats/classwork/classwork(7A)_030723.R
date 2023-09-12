

library(tidyverse)
setwd('C:\\Users\\epicm\\Documents\\School\\flder\\ISWR\\data')
ds = read_csv("foodSpending.csv")
theMean=mean(ds$amt)
theSD=sd(ds$amt)
n=20
MOE=qt(0.975,n-1)*theSD/sqrt(n)
MOE
lower=theMean-MOE
upper=theMean+MOE
lower
upper
ds %>%
  summarize(theMean=mean(amt),theSD=sd(amt),n=n(),
            MOE=qt(0.975,n-1)*theSD/sqrt(n),
            lower=theMean-MOE,
            upper=theMean+MOE)


#Class exercise

#interpretation of a calculation of 95% confidence interval
#based on 30 responses being ($628,$1471) is that the values of
#$628 and $1471 are the bounds of this interval which contains 95% of the data.

(1471+628)/2

1471+1049.5
MOEcw = 1471-1049.5
#421.5 = qt(0.975,29)(5/sqrt(30))

#data is probably skewed if there is a high standard deviation