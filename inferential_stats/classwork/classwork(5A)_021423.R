#setwd("C:/Users/epicm/Documents/School/flder/ISWR/data")

library(tidyverse)
library(skimr)

shotsMade = rbinom(3141592,10,0.372)
shotsMade

tibble(shotsMade) %>%
  summarize(simProb=(n()/shotsMade)) %>%
  mutate(actualProb=dbinom(shotsMade,10,0.372))%>%
  ggplot(aes(x=shotsMade)) + 
  geom_bar(fill="pink",color="black") +
  scale_x_continuous(n.breaks=11)


## example

ppg = rpois(3141592,31)
tibble(ppg)%>%
  ggplot() +
    geom_bar(aes(x=ppg), fill="cyan4",color="black")+
    scale_x_continuous(n.breaks=max(ppg)/2) +
    labs(title="Damian Lillard PPG", x="ppg") +
    theme_minimal()

## exercise #1

notds=read_csv("../data/SATscores-2023.txt")
head(notds)
tail(notds)
names(notds)

#ds %>%
#  select()

skim(notds)

notds%>%
  arrange(desc(averageSatMath)) %>%
  print(n=28)

notds%>%
  summarize(
    minSAT=min(averageSatMath),
    Q1=quantile(averageSatMath,0.25),
    medSAT=median(averageSatMath),
    Q3=quantile(averageSatMath,0.75),
    maxSAT=max(averageSatMath)
  )

notds%>%
  ggplot(aes(x=averageSatMath))+
  geom_histogram(color="black",fill="salmon",bins=12)+
  geom_vline(xintercept=548)+
  ggtitle("State-level SAT data 2023") + theme_minimal()

## exercise #2

ds=read_csv("../data/ACTscores-2023.txt")
head(ds)
tail(ds)
names(ds)

skim(ds)

ds%>%
  filter(state=="Oregon")


ds%>%
  arrange(desc(averageACTScore))

ds%>%
  summarize(
    minSAT=min(averageACTScore),
    Q1=quantile(averageACTScore,0.25),
    medSAT=median(averageACTScore),
    Q3=quantile(averageACTScore,0.75),
    maxSAT=max(averageACTScore)
  )

ds%>%
  ggplot(aes(x=averageACTScore))+
  geom_histogram(color="black",fill="maroon",bins=12)+
  geom_vline(xintercept=21)+
  ggtitle("State-level ACT data 2023") + theme_minimal()


## standardizing

notds%>%
  mutate(zmath=(averageSatMath-mean(averageSatMath))/sd(averageSatMath)
        )%>%
  select(state,averageSatMath,zmath) %>%
  print(n=30)
