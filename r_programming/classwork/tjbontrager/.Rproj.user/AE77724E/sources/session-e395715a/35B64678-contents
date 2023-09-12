## Step 1: install packages
#install.packages("tidyverse")

## Step 2: calling library
library(tidyverse)

##Step 3: Data sets in the environment
data("OrchardSprays")

## Step 4: learn about the data
#help("OrchardSprays")
?OrchardSprays

## Structure of data
str(OrchardSprays)
View(OrchardSprays)

## Step 5: looking at data
##head: first 6 rows
head(OrchardSprays)

##tail: last 6 rows
tail(OrchardSprays)

##View
View(OrchardSprays)

## Step 6: Structure
str(OrchardSprays)

## "Factor" in R is "categorical variable"; treatments have levels

## Step 7: Variable Assignment
## and the $ operator

response <- OrchardSprays$decrease

## What kind of variable is this?
class(response) #numeric


## other types of variables:
# 1) factors
explanatory<-OrchardSprays$treatment
class(explanatory)

# 2) character string
my_name<-"Tugler"
class(my_name)

# 3) boolean
my_bool<-TRUE
class(my_bool)
my_bool1<-0
class(my_bool1)

# 4)
my_pie<-pi
class(my_pie)

# 5) integers
my_int<-13L
class(my_int)

## Step 8: graphics in R
boxplot(decrease~treatment, data=OrchardSprays)
## order defaulted to alphabetical in R
OrchardSprays$treatment<-factor(OrchardSprays$treatment,
                                levels=c('H','G','F','E','D','C','B','A'))
boxplot(decrease~treatment, data=OrchardSprays)

## Step 9: vectors
n<-length(response)

## Step 10: Common functions!!
s<-sum(response) #in mL
mean(response)

## Step 11: operations on variables
s/n

