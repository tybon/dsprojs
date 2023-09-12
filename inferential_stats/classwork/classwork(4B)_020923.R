library(tidyverse)

#pitcher example in slides

#P(X=4)
dpois(4,lambda=2.67)

#P allows no more than 4 runs
#P(X<=4)
ppois(4,lambda=2.67)

#P allows at least 4 runs
#P(X>=4) ==> 1-P(X<4) = 1-P(X<=3)
1-ppois(3,2.67)


#P(X=4 in 6 innings)?
# X~Poisson(lamb_innings=?)
# (2.67 runs/9 ins) = (lamb runs/6 ins)
# lamb=1.78.

lambda6=2.67*6/9

dpois(4,lambda6)


#baseball example

dpois(4,lambda6)

#Class exercise
#fail rate 48%; 20 drivers today; one computer
#expvalue of failure = 0.48*20 = 9.6 ~10
#prob 1st person to fail is 5th = P(X=5)

x=0:20
prob = dbinom(x,20,0.48)
tibble(x,prob) %>%
  mutate(expComp=x*prob) %>%
  summarize(expVal=sum(expComp))

dgeom(4,0.48)

1-pbinom(199,250,0.48)





