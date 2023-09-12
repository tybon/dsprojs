#presidential election poll example

library(tidyverse)

candidate = c("trump","desantis","haley","pence")
prop=c(0.43,0.41,0.06,0.04)
tib = tibble(candidate,prop)
n=1580 #people surveyed

tib %>%
  mutate(MOE=qnorm(0.975)*sqrt(prop*(1-prop)/n),
         lower=prop-MOE,
         upper=prop+MOE)


#class exercise

prop=295/1005 #prop of adults with tattoos.
n=1005

#99% confidence
MOE=qnorm(0.995)*sqrt(prop*(1-prop)/n)
upper=prop+MOE
lower=prop-MOE

#95% confidence
MOE=qnorm(0.975)*sqrt(prop*(1-prop)/n)
upper=prop+MOE
lower=prop-MOE

#90% confidence
MOE=qnorm(0.95)*sqrt(prop*(1-prop)/n)
upper=prop+MOE
lower=prop-MOE

tibble(prop,confCoeff=qnorm(c(0.95,0.975,0.995))) %>%
  mutate(MOE=confCoeff*sqrt(prop*(1-prop)/n),
         lower=prop-MOE,
         upper=prop+MOE)
#95% confident that the true proportion of adults with a tattoo or more
#is captured by the interval (27.0%,31.7%)