#Class example (politics on 10; out of order)

nbe=630
phatbe=0.54
xbe=nbe*phatbe
naf=1010
phataf=0.51
xaf=naf*phataf
prop.test(x=c(xbe,xaf),
              n=c(nbe,naf),
              alternative="greater")
#disgusting variable names because lmao tryna catch up

library(tidyverse)
library(skimr)
mu=1000
x=c(1214,1087,1200,1419,1121,1325,1345,1244,1258,1356,1132,1191,1270,1295,1135)
skim(x)
# or
tibble(x=x) %>%
  summarize(sampleMean=mean(x), sampleSD=sd(x), sampleSize=n())

#t-testing
#*Params:
#*x
#*hypothesized mean
#*alternative hypothesis
t.test(x,mu=1000,alternative="less")

tibble(x=x) %>%
  ggplot() +
  geom_histogram(aes(x=x),fill="seagreen4",color="black",bins=10) +
  labs(title="Chips Ahoy! Experiment", x="#chips") +
  theme_minimal()

setwd("C:\\Users\\epicm\\Documents\\School\\20222023\\ISWR\\data")
df = read_csv("tires.csv")
#class exercise
#assumption checking
#*observations are independent
#*sample is representative of population (random)
#*normal?
df
df %>%
  ggplot()+
  labs(title="Tires survey",x="stopping distance") +
  theme_minimal()
#*normal indeed
t.test(df,mu=125,alternative="greater")
