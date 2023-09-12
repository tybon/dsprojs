#setwd("C:/Users/epicm/Documents/School/flder/ISWR")

library(tidyverse)
library(skimr)

wthr = read_csv("data/portlandWeather-NWS.txt")

head(wthr)
tail(wthr)
skim(wthr)

wthr1 = wthr %>% select(theDate,maxTempF)
wthr1 = wthr1 %>% mutate(maxTempC=5/9*(maxTempF-32)) %>%
  summarize(expF=mean(maxTempF,na.rm=T),expC=mean(maxTempC,na.rm=T))
wthr1


tibble(x=1:6,theProb=1/6, themean=3.5) %>%
         mutate(sqDist=(x-3.5)^2),sqDist*theProb)


##wthr1 = wthr1 %>%
##  mutate(maxTempC=5/9*(maxTempF-32)) %>%

wthr1 = wthr1 %>% mutate(maxTempC=5/9*(maxTemp-32)) %>%
  select(theDate,maxTempF,maxTempC) %>%
  gather(key="tempUnit",value="maxTemp",
         maxTempF,maxTempC)

tibble(dagger1=1:4,theProb=0.25,theMean=2.5) %>%
  mutate(sqDist=(dagger1-theMean)^2,sqDistProb=sqDist*theProb) %>%
  summarize(theVar=sum(sqDistProb),theSD=sqrt(theVar))

