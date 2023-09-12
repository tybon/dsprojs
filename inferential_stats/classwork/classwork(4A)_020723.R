library(tidyverse)

#Dame Dolla situation

x=0:3
# x=c(1,2,3)
prob=c(0.248,0.44,0.261,0.0515)

SumTibA = tibble(x,prob) %>%
  mutate(expComp=x*prob) %>%
  summarize(expValue=sum(expComp))
SumTibA

SumTibB = tibble(x,prob) %>%
  mutate(varComp=(x-SumTibA)^2*prob) %>%
  summarize(
    theVar=sum(varComp),
    theSD=sqrt(theVar))
SumTibB

#P(needs 2 shots to make first 3pter)
# P(X=2)
dgeom(1,0.372)

#P(needs 3 shots to make first 3pter)
# P(X=3)
dgeom(2,0.372)

#P(needs up to 3 shots to make 3pter)
# P(X<=3)
pgeom(3,0.372)


# only 4% of people have AB blood type. Suppose you are running a blood
# drive for the ARC. What is the probability that the
# first donor with type AB blood is the 5th person? Assume
# every person is eligible to donate blood.
dgeom(5,0.04) #probability that first person with AB is #5
dgeom(10,0.04) #probability that first person with AB is #10
1/0.04 #average number of donors to come in with AB blood

#probability of left-handers
#P(X=k)
dbinom(1,18,0.10)

#P(at least 1 lefty) P(X>=1)
# or = 1-P(X<1)
# = 1-P(X=0)
1-pbinom(0,18,0.10) #or dbinom also works in this case
